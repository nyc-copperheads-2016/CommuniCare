class CaregiverRelationship < ActiveRecord::Base
  belongs_to :primary_caregiver
  belongs_to :on_call_caregiver
  has_many :appointments
end
