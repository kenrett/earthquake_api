class Earthquake < ActiveRecord::Base
  attr_accessible :time, :latitude, :longitude,:depth, :mag, :magtype, :nst, :gap, :dmin, :rms, :net, :id, :updated, :place

  default_scope -> { where arel_table[:time].gteq(7.days.ago) }
  scope :day, -> (time) { where arel_table[:time].gt(time.to_date) }

  def self.filter_by_params(params)
    # scoped = self.scoped
    # scoped = scoped.where(:)
  end
end
