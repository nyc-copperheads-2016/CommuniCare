class AddFieldsToPrimaryCaregivers < ActiveRecord::Migration
  def change
    add_column :primary_caregivers, :sash_id, :integer
    add_column :primary_caregivers, :level,   :integer, :default => 0
  end
end
