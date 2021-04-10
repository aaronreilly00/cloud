class Checkvaccinated
	def self.runcheck(isVaccinated)
		if isVaccinated <= 20
			date = "over 12 months until vaccine availability is expected"
		elsif isVaccinated <= 42 
			date = "from 10 - 12 months until vaccine availability is expected"
		elsif isVaccinated <= 52 
			date = "from 8 - 10 months until vaccine availability is expected"
		elsif isVaccinated <= 62 
			date = "from 6 - 8 months until vaccine availability is expected"
		elsif isVaccinated <= 72 
			date = "from 4 - 6 months until vaccine availability is expected"
		else
			date = "within the next 3 month vaccine availability is expected"
		end
		return date
	end
end