require 'rails_helper'

RSpec.describe PrimaryCaregiver, type: :model do
	it { should have_one(:patient) }
	it { should have_one(:login)}
	it { should have_many(:appointments).through(:caregiver_relationships)}
	it { should have_many(:caregiver_relationships)}

end
