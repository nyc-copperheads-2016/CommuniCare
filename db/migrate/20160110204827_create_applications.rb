class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.references :appointment, null:false
      t.references :on_call_caregiver
      t.string :body

      t.timestamps null: false
    end
  end
end
