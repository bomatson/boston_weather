class ForecastQuery
  def initialize(latitude, longitude)
    @latitude = latitude
    @longitude = longitude
  end

  def current_weather
    ForecastIO.forecast(@latitude, @longitude).currently
  end

  def temperature
    current_weather.temperature
  end

  def boston_humidity
    current_weather_of_boston.humidity
  end
end