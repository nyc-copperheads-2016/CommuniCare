class PrimaryCaregiver < ActiveRecord::Base
  has_merit

  has_one :login, :as => :loginable
  has_many :caregiver_relationships
  has_one :patient
  has_many :appointments, through: :caregiver_relationships
  has_attached_file :image, styles: { medium: "300x300>", thumb: "160x160#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def find_OCC(miles)
    Login.near([login.latitude, login.longitude], miles).where(loginable_type: "OnCallCaregiver")
  end

end
