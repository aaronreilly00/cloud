require_relative 'patients'

class Displayer
	def initialize(patients)
		patients.add_observer(self)
	end

	def update(patients)
		print " patient #{patients.name} has new vaccine amounts: #{patients.amount}\n "
	end
end

patients = Patients.new("Aaron", "Dublin", 1)
displayer = Displayer.new(patients)

patients.amount = 2