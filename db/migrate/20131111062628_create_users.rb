class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, :middle_name, :last_name, :email, :password_digest
      t.column :country_iso, :string, limit: 2 # ISO 3166 - 2 characters.
      t.timestamps
      t.references :intranet_member
      t.index :email, unique: true
    end
  end
end
