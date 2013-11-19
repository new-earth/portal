class Intranet::Member < Intranet::Base
  self.table_name = 'member'
  
  has_one :user
  before_save :set_defaults
  
  validates :first_name, presence: true, length: { maximum: 30 }
  validates :middle_name, length: { maximum: 30 }
  validates :last_name, length: { maximum: 30 }
  validates :email_address, presence: true, uniqueness: true, length: { maximum: 128 }
  validates :country, presence: true, length: { minimum: 2, maximum: 2 }
  
  private

  def set_defaults
    self.status = 1
  end

  def timestamp_attributes_for_create
    super << :date_created
  end
  def timestamp_attributes_for_update
    super << :date_updated
  end

end