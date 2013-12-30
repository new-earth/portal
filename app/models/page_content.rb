class PageContent < ActiveRecord::Base
  validates :section, presence: true
  rails_admin do
    navigation_icon 'icon-book'
  end
end
