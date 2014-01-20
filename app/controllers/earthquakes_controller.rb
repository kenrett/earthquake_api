class EarthquakesController < ApplicationController
  include ActionController::MimeResponds

  respond_to :json

  def index
    scope = Earthquake.all
    # binding.pry
    scope = scope.on_date(Time.at(params[:on])) if params[:on]
    respond_to do |format|
      format.json { render json: scope }
    end
  end
end