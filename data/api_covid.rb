require 'rubygems'
require 'httparty'


class VaccineTrackerRest
	include HTTParty
	base_uri 'https://opendata.ecdc.europa.eu/covid19/vaccine_tracker'

	def tracker
		self.class.get('/json/')
	end
end

vaccine_tracker_rest = VaccineTrackerRest.new
puts vaccine_tracker_rest.tracker

File.open("tracking.txt", "w") do |file|
	file.write(vaccine_tracker_rest.tracker)
end

