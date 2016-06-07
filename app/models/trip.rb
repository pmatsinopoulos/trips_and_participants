class Trip < ActiveRecord::Base
  has_many :participants, inverse_of: :trip

  validates :city_from, presence: true
  validates :city_to, presence: true
  validates :travel_at, presence: true
end
