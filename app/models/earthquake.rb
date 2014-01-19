class Earthquake < ActiveRecord::Base
  attr_accessible :time,
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
                  :updated,
                  :place
end
