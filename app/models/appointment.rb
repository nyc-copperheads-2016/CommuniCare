class Appointment < ActiveRecord::Base
  belongs_to :caregiver_relationship
  has_many :reviews
  has_many :reminders
end
