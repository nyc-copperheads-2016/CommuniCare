class OnCallCaregiver < ActiveRecord::Base
  has_merit

  has_many :caregiver_relationships
  has_many :appointments, through: :caregiver_relationships
  has_one :login, :as => :loginable
  has_many :badges
  has_attached_file :image, styles: { medium: "300x300>", thumb: "160x160#" }, default_url: "/assets/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


  def find_PC(miles)
    Login.near([login.latitude, login.longitude], miles).where(loginable_type: "PrimaryCaregiver")
  end
end

