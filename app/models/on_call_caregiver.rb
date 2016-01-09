class OnCallCaregiver < ActiveRecord::Base
  has_many :caregiver_relationships
  has_many :appointments, through: :caregiver_relationships
  has_one :login, :as => :loginable
  has_many :badges

  validates_presence_of :education
  validates_presence_of :about

  def find_PC(miles)
    Login.near([login.latitude, login.longitude], miles).where(loginable_type: "PrimaryCaregiver")
  end
end

