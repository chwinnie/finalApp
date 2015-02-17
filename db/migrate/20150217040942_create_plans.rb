class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :trip
      t.string :event_name

      t.timestamps null: false
    end
  end
end
