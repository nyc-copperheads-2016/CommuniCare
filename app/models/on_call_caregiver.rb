class OnCallCaregiver < ActiveRecord::Base
  has_merit

  has_many :caregiver_relationships
  has_many :appointments, through: :caregiver_relationships
  has_one :login, :as => :loginable
  has_many :badges

  def find_PC(miles)
    Login.near([login.latitude, login.longitude], miles).where(loginable_type: "PrimaryCaregiver")
  end
end

