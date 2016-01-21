require 'rails_helper'

RSpec.describe Application, type: :model do
	it { should belong_to(:appointment) }
	it { should belong_to(:on_call_caregiver) }
end
