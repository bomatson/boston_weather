class PagesController < ApplicationController
  def home
  end

  def show
    @city = params[:city]

    lat, long = Geocoder.coordinates(@city)
    weather = ForecastQuery.new(lat, long)
    
    @temperature = weather.temperature
  end
end