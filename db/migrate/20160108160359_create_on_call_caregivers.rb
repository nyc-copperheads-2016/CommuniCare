class CreateOnCallCaregivers < ActiveRecord::Migration
  def change
    create_table :on_call_caregivers do |t|
      t.string :education
      t.string :credentials
      t.string :about
      t.string :specialities
      t.string :experience
      t.string :hobbies


      t.timestamps null: false
    end
  end
end
