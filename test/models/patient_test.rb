require "test_helper"

class PatientTest < ActiveSupport::TestCase
   test "is a valid patient" do
   	assert patient = Patient.new(first_name: 'Aaron', last_name: 'Test',  email: 'aaronTest@gmail.com', phone: '08334222', vaccine_amount: '2', vaccine_type: 'jj', vaccine_location: "London").save
     
   end

   test "is first name is needed" do
   	assert_not patient = Patient.new(last_name: 'Test',  email: 'aaronTest@gmail.com', phone: '08334222', vaccine_type: 'jj', vaccine_location: "London").save
     
   end

   test "is last name is needed" do
   	assert_not patient = Patient.new(first_name: 'Aaron', email: 'aaronTest@gmail.com', phone: '08334222', vaccine_type: 'jj', vaccine_location: "London").save
     
   end

   test "is email is needed" do
   	assert_not patient = Patient.new(first_name: 'Aaron', last_name: 'Test', phone: '08334222', vaccine_type: 'jj', vaccine_location: "London").save
     
   end

   test "is phone is needed" do
   	assert_not patient = Patient.new(first_name: 'Aaron', last_name: 'Test',  email: 'aaronTest@gmail.com', vaccine_type: 'jj',vaccine_location: "London").save
     
   end
   test "is vaccine type is needed" do
   	assert_not patient = Patient.new(first_name: 'Aaron', last_name: 'Test',  email: 'aaronTest@gmail.com', phone: '08334222', vaccine_location: "London").save
     
   end
   test "is vaccine location is needed" do
   	assert_not patient = Patient.new(first_name: 'Aaron', last_name: 'Test',  email: 'aaronTest@gmail.com', phone: '08334222', vaccine_type: 'jj').save
     
   end
end
