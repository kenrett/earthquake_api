require 'csv'
require 'net/http'

desc 'Get Earthquake CSV'

task :get_earthquakes => :environment do
  uri = URI("http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_week.csv")
  page = Net::HTTP.get(uri)
  
  File.open("earthquakes.csv", "w") do |f|
    f << page
  end

  CSV.foreach("earthquakes.csv", headers: true, header_converters: :symbol) do |row|
  # binding.pry
  print '.'
    Earthquake.find_or_create_by_quake_id(row.to_hash)
  end
end

