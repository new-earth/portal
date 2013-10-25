class Intranet::User < Intranet::Base
  
  self.table_name = 'user'
  self.inheritance_column = 'xyz' # reserved Activerecord column 'type' is in use in the user table.
  
  belongs_to :member 
  accepts_nested_attributes_for :member
  
  before_save :set_defaults
  validates :password, length: { in: 6..20 }
  # validates_format_of :password => /\A\w+\z/  # alphanumeric
  
  private
  
  def set_defaults
    self.status = 1
  end
end