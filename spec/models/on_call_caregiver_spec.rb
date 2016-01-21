require 'rails_helper'

RSpec.describe OnCallCaregiver, type: :model do
	it { should have_one(:login)}
	it { should have_many(:appointments).through(:caregiver_relationships)}
	it { should have_many(:caregiver_relationships)}
	it { should have_many(:badges)}

end