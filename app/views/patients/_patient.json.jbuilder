json.extract! patient, :id, :first_name, :last_name, :email, :phone, :vaccine_amount, :vaccine_type, :vaccine_location, :created_at, :updated_at
json.url patient_url(patient, format: :json)
