real_cities=["Stamford", "Trenton", "Paterson", "Cherry Hill", "Poughkeepsie", "Newark","Brooklyn","Amityville","Hicksville","Freeport"]
real_states = ["CT", "NJ", "NJ", "NJ", "NY", "NJ", "NY","NY","NY","NY"]

FactoryGirl.define do
	factory :login do
		location_number = rand(0..9)
		sequence(:email) {|n| "email#{n}@gmail.com" }
	    password "password"
	    address "123 Main St."
	    city "Brooklyn"
	    state "NY"
	    zip 55555
	    first_name "John"
	    last_name "Smith"
	    phone "555-555-5555"
	end
end