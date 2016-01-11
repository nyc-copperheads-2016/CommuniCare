class Patient < ActiveRecord::Base
  belongs_to :primary_caregiver
end
