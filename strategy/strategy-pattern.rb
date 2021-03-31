require 'json'

class Reporter
	def initialize(formatter)
		@formatter = formatter.new
	end

	def report
		stock_left = {name: "Aaron", VaccineLocation: "London", amount: 1}
		@formatter.format(stock_left)
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
    	data.each { |product, amount| html << "<li>#{product}: #{amount}</li>" }
    	html << "</ul>"

    	html
  	end
end

class PlainText
	def format(data)
    	data.to_s
  	end
end

r = Reporter.new(JSONFormatter)
p r.report