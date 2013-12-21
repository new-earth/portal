class AddDeclarationFieldsToMember < ActiveRecord::Migration
  def change
    add_column :member, :given_name, :string
    add_column :member, :legal_name, :string
    add_column :member, :birth_country, :string, limit: 2
    add_column :member, :signed_declaration_at, :datetime
  end
end
