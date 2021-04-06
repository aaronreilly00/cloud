require "application_system_test_case"

class PatientsTest < ApplicationSystemTestCase
  setup do
    @patient = patients(:aaron)
  end

  test "visiting the index" do
    sign_in users(:one)
    visit patients_url
    assert_selector "h1", text: "Patients"
  end

  test "creating a Patient" do
    sign_in users(:one)
    visit patients_url
    click_on "New Patient"

    assert_selector "h1", text: "New Patient"

    fill_in "First Name", with: @patient.first_name
    fill_in "Last Name", with: @patient.last_name
    fill_in "Email", with: @patient.email
    fill_in "Phone", with: @patient.phone
    fill_in "Vaccine Amount", with: @patient.vaccine_amount
    fill_in "Vaccine Location", with: @patient.vaccine_location
    fill_in "Vaccine Type", with: @patient.vaccine_type
    click_on "Create Patient"

    assert_text "Patient was successfully created"
    click_on "Back"
  end

  test "updating a Patient" do
    sign_in users(:one)
    visit patients_url
    
    click_on "New Patient"

    fill_in "First Name", with: @patient.first_name
    fill_in "Last Name", with: @patient.last_name
    fill_in "Email", with: @patient.email
    fill_in "Phone", with: @patient.phone
    fill_in "Vaccine Amount", with: @patient.vaccine_amount
    fill_in "Vaccine Location", with: @patient.vaccine_location
    fill_in "Vaccine Type", with: @patient.vaccine_type
    

    click_on "Create Patient"

    find('#Edit').click
    assert_selector "h1", text: "Editing Patient"
    click_on "Update Patient"
    assert_text "Patient was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient" do
    sign_in users(:one)
    visit patients_url
    
    click_on "New Patient"

    fill_in "First Name", with: @patient.first_name
    fill_in "Last Name", with: @patient.last_name
    fill_in "Email", with: @patient.email
    fill_in "Phone", with: @patient.phone
    fill_in "Vaccine Amount", with: @patient.vaccine_amount
    fill_in "Vaccine Location", with: @patient.vaccine_location
    fill_in "Vaccine Type", with: @patient.vaccine_type
    

    click_on "Create Patient"
    page.accept_confirm do
      click_on "Delete", match: :first
    end

    assert_text "Patient was successfully destroyed"
  end
end
