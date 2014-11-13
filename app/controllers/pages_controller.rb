class PagesController < ApplicationController
  def home
    current_weather = ForecastIO.forecast(42.36, -71.06).currently
    @temperature  = current_weather.temperature
  end
end