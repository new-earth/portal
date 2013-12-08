class Intranet::PageTemplate < Intranet::Base
  self.table_name = 'page_template'

  has_many :paths

  # Columns of interest:
  # name
end