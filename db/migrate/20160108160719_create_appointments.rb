class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :caregiver_relationship
      t.date :date
      t.string :duration
      t.datetime :start_time
      t.string :details
      t.boolean :pc_confirmed
      t.boolean :occ_confirmed

      t.timestamps null: false
    end
  end
end
