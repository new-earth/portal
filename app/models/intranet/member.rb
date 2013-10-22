class Intranet::Member < Intranet::Base
  self.table_name = 'member'

  has_one :user
end