class Appointment < ActiveRecord::Base
  belongs_to :caregiver_relationship
  has_many :reviews
  has_many :reminders
  has_many :applications, dependent: :destroy

  def convert_to_datetime(time)
    d = date
    t = time
    dt = DateTime.new(d.year, d.month, d.day, t.hour, t.min)
  end

  def self.appt_dates(appointments)
    appointments.map{|appointment| appointment.date}
  end

  def convert_to_time
    start_time.strftime("%I:%M%p")
  end

  def applicants
    applications.map{|application| application.on_call_caregiver}
  end
end
