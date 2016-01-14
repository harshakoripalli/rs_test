class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :date_of_visit
      t.string :reminder_of_appointment
      t.string :reason_of_visit
      t.date :date_of_next_visit
      t.integer :doctor_id
      t.integer :pet_id

      t.timestamps null: false
    end
  end
end
