class Group < ActiveRecord::Base
  self.table_name = 'group'
  has_and_belongs_to_many :users, join_table: "user_group_match"


  rails_admin do
    navigation_icon 'icon-group'
    parent User
  end

end