class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :city_from, null: false
      t.string :city_to, null: false
      t.datetime :travel_at, null: false

      t.timestamps null: false
    end
  end
end
