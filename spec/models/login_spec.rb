require 'rails_helper'

RSpec.describe Login, type: :model do
	it {should belong_to(:loginable)}
end
