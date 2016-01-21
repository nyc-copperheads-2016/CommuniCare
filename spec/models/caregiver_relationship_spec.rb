require 'rails_helper'

RSpec.describe CaregiverRelationship, type: :model do
	it { should belong_to(:primary_caregiver) }
	it { should belong_to(:on_call_caregiver) }
	it { should have_many(:appointments)}
end
