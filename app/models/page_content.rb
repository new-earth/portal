class PageContent < ActiveRecord::Base
  validates :section, presence: true
  rails_admin do
    navigation_icon 'icon-book'
    field :section
    field :title
    field :link
    field :parent_link
    field :content
  end
end
