require "spec_helper"

describe EarthquakesController do
  describe "routing" do

    it "routes to #index" do
      get("/earthquakes").should route_to("earthquakes#index")
    end
  end
end