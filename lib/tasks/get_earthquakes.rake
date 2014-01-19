require 'csv'
require 'net/http'

desc 'Get Earthquake CSV'

task :get_quakes => :environment do
  uri = URI("http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_week.csv")
  page = Net::HTTP.get(uri)
  
  File.open("earthquakes.csv", "w") do |f|
    f << page
  end

  CSV.foreach("earthquakes.csv", headers: true, header_converters: :symbol) do |row|
  # binding.pry
  print '.'
    Quake.find_or_create_by_id(time: row[:time],
                 latitude: row[:latitude],
                 longitude: row[:longitude],
                 depth: row[:depth],
                 mag: row[:mag],
                 magtype: row[:magtype],
                 nst: row[:nst],
                 gap: row[:gap],
                 dmin: row[:dmin],
                 rms: row[:rms],
                 net: row[:net],
                 id: row[:id],
                 updated: row[:updated],
                 place: row[:place]
                 )
  end
end

