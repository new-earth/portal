class User < ActiveRecord::Base

  self.table_name = 'user'
  self.inheritance_column = 'xyz' # reserved Activerecord column 'type' is in use in the user table.

  validates :email, uniqueness: true, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  
  belongs_to :member 
  accepts_nested_attributes_for :member
  
  before_save :set_defaults
  
  protected
  
  def set_defaults
    self.status = 1
  end
end