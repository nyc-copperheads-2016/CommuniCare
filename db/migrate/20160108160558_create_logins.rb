class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :email, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :password_digest
      t.integer :zipcode, null: false
      t.references :loginable, polymorphic:true, index: true
      t.string :phone, null: false
      t.timestamps null: false
    end
  end
end
