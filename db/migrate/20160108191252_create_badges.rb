class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.references :on_call_caregiver, null: false
      t.string :type, null: false
      t.timestamps null: false
    end
  end
end
