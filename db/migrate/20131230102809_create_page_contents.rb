class CreatePageContents < ActiveRecord::Migration
  def change
    create_table :page_contents do |t|
      t.string :section
      t.string :title
      t.string :link
      t.string :parent_link
      t.text :content

      t.index :section
    end
  end
end
