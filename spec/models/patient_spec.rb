require 'rails_helper'

RSpec.describe Patient, type: :model do
	it { should belong_to(:primary_caregiver) }
end
