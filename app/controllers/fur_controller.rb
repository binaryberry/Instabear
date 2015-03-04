require 'json'
require 'net/http'

class FurController < ApplicationController

	def index
		@london_humidity = JSON.parse(Net::HTTP.get('api.openweathermap.org', '/data/2.5/weather?q=London,UK'))["main"]["humidity"]
		@big_bear_city = JSON.parse(Net::HTTP.get('api.openweathermap.org', '/data/2.5/weather?q=big_bear_city,USA'))["main"]["humidity"]
	end

end
