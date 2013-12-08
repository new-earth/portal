class Intranet::Page < Intranet::Base
  self.table_name = 'page'

  belongs_to :path

  # Columns of interest:
  # status: 1 or 0
  # requires_login
  # groups_allowed
  # show_in_section_menu
  # section_menu_sort_order
  # section_menu_link_text
  # page_title
  # primary_content: ***
end