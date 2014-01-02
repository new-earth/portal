class Path < ActiveRecord::Base
  self.table_name = 'path'

  has_many :pages
  belongs_to :page_template

  # Columns of interest:
  # status: 1 or 0
  # requires_login: 1 or 0
  # groups_allowed: comma-separated list of integers
  # path: *** the big one ***
  # title: page title
  # sort_order: integer. assuming it's the sort by.
  

  rails_admin do
    navigation_icon 'icon-external-link'
    parent PageTemplate
  end

end
