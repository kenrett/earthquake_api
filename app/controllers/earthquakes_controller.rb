class EarthquakesController < ApplicationController
  include ActionController::MimeResponds

  respond_to :json

  def index
    scope = Earthquake.all

    scope = scope.day(Time.zone.at(params[:on].to_i).to_date) if params[:on]
  end
end