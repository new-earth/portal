class ConfirmLegacyMembers < ActiveRecord::Migration
  def up
    Member.update_all(confirmed_at: Time.now, confirmation_sent_at: Time.now)
  end

  def down
    # whatevs
  end
end
