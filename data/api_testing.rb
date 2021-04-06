require 'rubygems'
require 'httparty'


class VaccineTestingRest
	include HTTParty
	base_uri 'https://opendata.ecdc.europa.eu/covid19/testing'

	def testing
		self.class.get('/json/')
	end
end

vaccine_testing_rest = VaccineTestingRest.new
puts vaccine_testing_rest.testing