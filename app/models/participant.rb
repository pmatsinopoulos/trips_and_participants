class Participant < ActiveRecord::Base
  belongs_to :trip, inverse_of: :participants
  belongs_to :user, inverse_of: :participants

  validates :trip, presence: true
  validates :user_id, uniqueness: {scope: :trip_id}, allow_blank: true
  validate :either_user_or_name

  def is_user?
    user.present?
  end

  def has_name?
    name.present?
  end

  private

  def either_user_or_name
    if user.present? && name.present?
      errors[:user] << "cannot have name"
      errors[:name] << "should not exist together with a user"
    end
  end
end
