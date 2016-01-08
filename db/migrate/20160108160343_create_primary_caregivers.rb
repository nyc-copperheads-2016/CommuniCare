class CreatePrimaryCaregivers < ActiveRecord::Migration
  def change
    create_table :primary_caregivers do |t|
      t.string :about_me, null: false

      t.timestamps null: false
    end
  end
end
