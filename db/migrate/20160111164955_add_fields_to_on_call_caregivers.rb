class AddFieldsToOnCallCaregivers < ActiveRecord::Migration
  def change
    add_column :on_call_caregivers, :sash_id, :integer
    add_column :on_call_caregivers, :level,   :integer, :default => 0
  end
end
