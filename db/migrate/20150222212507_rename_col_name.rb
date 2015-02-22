class RenameColName < ActiveRecord::Migration
  def change
  	rename_column :itineraries, :trip, :day
  end
end
