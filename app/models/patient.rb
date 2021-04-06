class Patient < ApplicationRecord
	belongs_to :user
	validates :first_name, :last_name, :email, :phone, :vaccine_amount, :vaccine_type, presence: true

	
end
