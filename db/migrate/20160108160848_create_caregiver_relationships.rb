class CreateCaregiverRelationships < ActiveRecord::Migration
  def change
    create_table :caregiver_relationships do |t|
      t.string :introduction_message, null: false
      t.references :primary_caregiver
      t.references :on_call_caregiver

      t.timestamps null: false
    end
  end
end
