class User < ActiveRecord::Base
  has_secure_password
  validates :email, uniqueness: true, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  validates :password, length: 6..20

  after_save :create_or_update_intranet_member

  protected
  
  def create_or_update_intranet_member
    Intranet::Member.create_with(
      first_name: self.first_name,
      middle_name: self.middle_name,
      last_name: self.last_name,
      country: self.country_iso
      # skills: self.skill.join(', '),
      # interests: self.interests.join(', ')
    ).find_or_create_by(email_address: self.email)
  end
end
