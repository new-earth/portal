# General Purpose Normalization Table -- accessible via the intranet CMS.
class Value < ActiveRecord::Base
  self.table_name = 'value'

  scope :interests, -> { where(name: 'register_interests').order(:order_by) }
  scope :skills,    -> { where(name: 'register_skills').order(:order_by) }


  rails_admin do
    navigation_icon 'icon-tags'
  end

end
