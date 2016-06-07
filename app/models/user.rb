class User < ActiveRecord::Base
  has_many :participants, inverse_of: :user

  validates :name, presence: true, uniqueness: {case_sensitive: false}
end
