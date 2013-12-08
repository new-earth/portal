class Intranet::Path < Intranet::Base
  self.table_name = 'path'

  has_one :page
  belongs_to :page_template

  # Columns of interest:
  # status: 1 or 0
  # requires_login: 1 or 0
  # groups_allowed: comma-separated list of integers
  # path: *** the big one ***
  # title: page title
  # sort_order: integer. assuming it's the sort by.
  
end