class AddAttachmentImageToPrimaryCaregivers < ActiveRecord::Migration
  def self.up
    change_table :primary_caregivers do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :primary_caregivers, :image
  end
end
