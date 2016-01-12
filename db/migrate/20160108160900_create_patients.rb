class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :gender
      t.string :habits
      t.string :routine
      t.string :ailments
      t.string :medication
      t.string :name
      t.string :background
      t.integer :age
      t.string :hobbies
      t.references :primary_caregiver

      t.timestamps null: false
    end
  end
end
