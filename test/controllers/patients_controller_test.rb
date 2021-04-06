require "test_helper"

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in users(:one)
    @patient = patients(:aaron)
  end

  test "should get index" do
    get patients_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_url
    assert_response :success
  end

  #test "should create patient" do
    #sign_in users(:one)
    #assert_difference('Patient.count') do
      #post patients_url, params: { patient: { first_name: @patient.first_name, last_name: @patient.last_name, email: @patient.email, phone: @patient.phone, vaccine_amount: @patient.vaccine_amount, vaccine_type: @patient.vaccine_type, vaccine_location: @patient.vaccine_location } }
    #end

    #assert_redirected_to patients_url(Patient.last)
  #end

  test "should show patient" do
    get patients_url(@patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_url(@patient)
    assert_response :redirect
  end

  #test "should update patient" do
    #sign_in users(:one)
    #patch patient_url(@patient), params: { patient: { email: @patient.email, first_name: @patient.first_name, last_name: @patient.last_name, phone: @patient.phone, vaccine_amount: @patient.vaccine_amount, vaccine_location: @patient.vaccine_location, vaccine_type: @patient.vaccine_type, user_id: @patient.user_id } }
    #assert_redirected_to patient_url(@patient)
  #end

  #test "should destroy patient" do
  #sign_in users(:one)
    #assert_difference('Patient.count',-1) do
      #delete patient_url(@patient)
    #end

    #assert_redirected_to patient_url
  #end
end
