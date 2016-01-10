class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :caregiver_relationship
      t.date :date
      t.integer :duration
      t.datetime :start_time
      t.string :details
      t.boolean :confirmed

      t.timestamps null: false
    end
  end
end
