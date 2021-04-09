require 'test_helper'

class InvalidNewUserWorkflowTest < ActionDispatch::IntegrationTest
	fixtures :all

	test 'try to create a patient with only vaccine amount' do 
		sign_in users(:one)
    	@patient = patients(:aaron)

		get '/patients/new'
		assert_response :success

		post patients_url, params:{patient: {vaccine_amount: @patient.vaccine_amount}}
		assert_equal '/patients', path
		assert_select 'li', "First name can't be blank"
		assert_select 'li', "Last name can't be blank"
		assert_select 'li', "Email can't be blank"
		assert_select 'li', "Phone can't be blank"
		assert_select 'li', "Vaccine type can't be blank"

	end


	test 'try to create a patient without vaccine amount' do 
		sign_in users(:one)
    	@patient = patients(:aaron)

		get '/patients/new'
		assert_response :success
		post patients_url, params:{patient: {first_name: @patient.first_name,last_name: @patient.last_name,email: @patient.email,phone: @patient.phone,vaccine_type: @patient.vaccine_type,vaccine_location: @patient.vaccine_location,}}
		assert_equal '/patients', path
		assert_select 'li', "Vaccine amount can't be blank"

	end

end



