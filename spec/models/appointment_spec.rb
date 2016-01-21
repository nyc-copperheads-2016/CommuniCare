require 'rails_helper'

RSpec.describe Appointment, type: :model do
	it { should belong_to(:caregiver_relationship) }
	it { should have_many(:reminders) }
	it { should have_many(:applications) }
	it { should have_many(:reviews) }
end
