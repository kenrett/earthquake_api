class Earthquake < ActiveRecord::Base
  attr_accessible :quake_date, :latitude, :longitude,:depth, :mag, :magtype, :nst, :gap, :dmin, :rms, :net, :quake_id, :updated, :place

  # default_scope -> { where arel_table[:quake_date].gteq(7.days.ago) }

  # scope :on_date, -> (date) { where Arel::Nodes::NamedFunction.new(:date, [arel_table[:quake_date]]).eq(date) }

  # def self.filter_by_params(params)
  #   # scoped = self.scoped
  #   # scoped = scoped.where(:)
  # end
end
