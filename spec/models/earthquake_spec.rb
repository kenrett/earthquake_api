require 'spec_helper'

describe Earthquake do 

  describe 'default scope' do 
    it 'should only show the past 7 days' do 
      Earthquake.all.to_sql.should match(/quake_date['"]? >= '?#{7.days.ago.to_date}/)
    end
  end

end