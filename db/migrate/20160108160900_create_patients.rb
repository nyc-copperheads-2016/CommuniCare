class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :gender, null: false
      t.string :habits, null: false
      t.string :routine, null: false
      t.string :ailments, null: false
      t.string :medication, null: false
      t.string :name, null: false
      t.string :background, null:false
      t.integer :age, null: false
      t.string :hobbies, null: false

      t.timestamps null: false
    end
  end
end
