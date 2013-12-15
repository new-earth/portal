class AddClearanceColumnsToMember < ActiveRecord::Migration
  def up
    change_table :member do |t|
      t.timestamps
      t.string :email, :null => false
      t.string :encrypted_password, :limit => 128, :null => false
      t.string :confirmation_token, :limit => 128
      t.string :remember_token, :limit => 128, :null => false

      t.index :email
      t.index :remember_token
    end

    ActiveRecord::Base.connection.execute <<-SQL
      update member
      set email=email_address
      where email_address is not null;
    SQL
    ActiveRecord::Base.connection.execute <<-SQL
      update member
      set email=email_address_2
      where email='' and email_address_2 is not null;
    SQL
  end

  def down
    change_table :member do |t|
      t.remove_timestamps
      t.remove :email
      t.remove :encrypted_password
      t.remove :confirmation_token
      t.remove :remember_token
    end
  end
end
