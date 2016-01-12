class AddLatitudeAndLongitudeToModel < ActiveRecord::Migration
  def change
    add_column :logins, :latitude, :float
    add_column :logins, :longitude, :float
  end
end
