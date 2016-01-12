class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :time, null: false
      t.string :body, null: false
      t.references :appointment

      t.timestamps null: false
    end
  end
end
