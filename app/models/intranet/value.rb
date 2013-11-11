# General Purpose Normalization Table -- accessible via the intranet CMS.
class Intranet::Value < Intranet::Base
  self.table_name = 'value'

  scope :interests, -> { where(name: 'register_interests').order(:order_by) }
  scope :skills,    -> { where(name: 'register_skills').order(:order_by) }
end