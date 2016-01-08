class OnCallCaregiver < ActiveRecord::Base
  has_many :caregiver_relationships
  has_many :appointments, through: :caregiver_relationships
  has_one :login, :as => :loginable


  validates_presence_of :education
  validates_presence_of :about
end
