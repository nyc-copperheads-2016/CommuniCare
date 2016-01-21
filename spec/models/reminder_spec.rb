require 'rails_helper'

RSpec.describe Reminder, type: :model do
	it { should belong_to(:appointment)}
end