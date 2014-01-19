class CreateEarthquakes < ActiveRecord::Migration
  def change
    create_table :quakes, :id=> false do |t|
      t.string  :time, 
                :updated,
                :latitude, 
                :longitude, 
                :depth, 
                :mag, 
                :magtype, 
                :nst, 
                :gap, 
                :dmin, 
                :rms, 
                :net, 
                :id,
                :place, 
                :type
    end
  end
end
