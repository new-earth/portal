class Intranet::User < Intranet::Base
  self.table_name = 'user'
  self.inheritance_column = 'xyz' # reserved Activerecord column 'type' is in use in the user table.
  belongs_to :member
end