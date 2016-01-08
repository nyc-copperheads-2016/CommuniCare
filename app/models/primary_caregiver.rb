class PrimaryCaregiver < ActiveRecord::Base
 has_one :login, :as => :loginable
 has_many :caregiver_relationships
 has_one :patient
 has_many :appointments, through: :caregiver_relationships
end
