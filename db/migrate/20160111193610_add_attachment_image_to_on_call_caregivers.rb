class AddAttachmentImageToOnCallCaregivers < ActiveRecord::Migration

  def change
    add_attachment :on_call_caregivers, :image
  end
end
