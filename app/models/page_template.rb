class PageTemplate < ActiveRecord::Base
  self.table_name = 'page_template'

  has_many :paths

  # Columns of interest:
  # name

  rails_admin do
    navigation_icon 'icon-book'
  end

end
