require 'test_helper'

class ParticipantTest < ActiveSupport::TestCase
  test 'participant cannot have both user and name' do
    user = User.create! name: "Barbara"
    trip = Trip.create! city_from: "London", city_to: "Rome", travel_at: Time.zone.now + 3.days
    participant = Participant.create! user_id: user.id, trip_id: trip.id, name: "George"
  end
end
