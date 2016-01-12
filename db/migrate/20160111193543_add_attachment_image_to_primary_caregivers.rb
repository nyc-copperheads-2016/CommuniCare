class AddAttachmentImageToPrimaryCaregivers < ActiveRecord::Migration

  def change
    add_attachment :primary_caregivers, :image
   end
end

