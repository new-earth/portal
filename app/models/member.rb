class Member < ActiveRecord::Base
  include Clearance::User
  self.table_name = 'member'
  
  has_one :user
  before_save :set_defaults

  validates :email_address, uniqueness: true, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  validates :password, length: 6..20

  validates :first_name, presence: true, length: { maximum: 30 }
  validates :middle_name, length: { maximum: 30 }
  validates :last_name, length: { maximum: 30 }
  validates :country, presence: true, length: { minimum: 2, maximum: 2 }

  alias_attribute :email, :email_address

  private

  def set_defaults
    self.status = 1
  end

  # def timestamp_attributes_for_create
  #   super << :date_created
  # end
  # def timestamp_attributes_for_update
  #   super << :date_updated
  # end

end