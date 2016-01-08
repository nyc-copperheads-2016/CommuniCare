class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :caregiver_relationship
      t.string :date
      t.string :duration

      t.timestamps null: false
    end
  end
end
