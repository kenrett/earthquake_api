class CreateEarthquakes < ActiveRecord::Migration
  def change
    create_table :earthquakes do |t|

      t.timestamps
    end
  end
end
