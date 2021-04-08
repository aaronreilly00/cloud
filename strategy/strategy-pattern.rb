require 'json'

class Reporter
	def initialize(formatter)
		@formatter = formatter.new
	end

	def report
		patient = {name: "Aaron", VaccineLocation: "London", amount: 1}
		@formatter.format(patient)
	end
end

class JSONFormatter
	def format(data)
    	data.to_json
  	end	
end

class HTMLFormatter
	def format(data)
    	html = ""

   	 	html << "<ul>"
    	data.each { |name, amount| html << "<li>#{name}: #{amount}</li>" }
    	html << "</ul>"

    	html
  	end
end

class PlainText
	def format(data)
    	data.to_s
  	end
end

r = Reporter.new(PlainText)
p r.report