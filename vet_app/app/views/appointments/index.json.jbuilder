json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date_of_visit, :reminder_of_appointment, :reason_of_visit, :date_of_next_visit, :doctor_id, :pet_id
  json.url appointment_url(appointment, format: :json)
end
