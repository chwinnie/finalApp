class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.string :trip
      t.string :event_name
      t.datetime :event_time

      t.timestamps null: false
    end
  end
end
