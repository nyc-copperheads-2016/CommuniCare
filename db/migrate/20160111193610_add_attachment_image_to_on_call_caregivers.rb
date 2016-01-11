class AddAttachmentImageToOnCallCaregivers < ActiveRecord::Migration
  def self.up
    change_table :on_call_caregivers do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :on_call_caregivers, :image
  end
end
