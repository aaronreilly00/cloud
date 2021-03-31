require_relative 'subject'
class Patients
	include Subject
	attr_reader :name, :location
	attr_accessor :amount

	def initialize(name, location, amount)
		super()
		@name = name
		@location = location
		@amount = amount
	end
	def amount=(new_amount)
		@amount = new_amount
		notify_observers
	end
end