class Application < ActiveRecord::Base
  belongs_to :appointment
  belongs_to :on_call_caregiver

  validates :body, presence: true
end
