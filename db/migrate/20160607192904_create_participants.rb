class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.integer :trip_id, null: false
      t.integer :user_id
      t.string :name

      t.timestamps null: false
    end

    add_foreign_key :participants, :trips, column: :trip_id
    add_foreign_key :participants, :users, column: :user_id
  end
end
