class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  self.table_name = 'member'
  
  has_one :user
  before_save :set_defaults

  validates :email, uniqueness: true, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  validates :password, length: 6..20, unless: "password.nil?"

  rails_admin do
    navigation_icon 'icon-user'
  end
  # validates :first_name, presence: true, length: { maximum: 30 }
  # validates :middle_name, length: { maximum: 30 }
  # validates :last_name, length: { maximum: 30 }
  # validates :country, presence: true, length: { minimum: 2, maximum: 2 }

  def admin?
    # has a user, that user is in Group #1 (Website Administrator)
    self.user && self.user.groups.where(id: 1).count > 0
  end

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