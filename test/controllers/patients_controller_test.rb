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

  test "should show patient" do
    get patients_url(@patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_url(@patient)
    assert_response :redirect
  end

end
