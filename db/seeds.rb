pc1 = PrimaryCaregiver.create!(about_me: Faker::Lorem.paragraph)
pcl1 = Login.create!(email: "primary1@care.com", password:"123456", password_confirmation: "123456", address: Faker::Address.street_address, city: "New York City", state: "NY", zipcode: Faker::Address.zip, phone: "914-555-5555", loginable_id: pc1.id, loginable_type: "PrimaryCaregiver", first_name: "John", last_name: "Smith")

occ1 = OnCallCaregiver.create!(education: Faker::University.name, credentials: Faker::Company.profession, about: Faker::Lorem.paragraph, specialities: Faker::Lorem.paragraph, experience: Faker::Lorem.paragraph, hobbies: Faker::Lorem.paragraph)
occl1 = Login.create!(email: "oncall1@care.com", password:"123456", password_confirmation: "123456", address: Faker::Address.street_address, city: "Jersey City", state: "NJ", zipcode: Faker::Address.zip, phone: "914-555-5555", loginable_id: occ1.id, loginable_type: "OnCallCaregiver", first_name: "Jane", last_name: "Doe")

i=0
while i < 10
  cities=["Stamford", "Trenton", "Paterson", "Cherry Hill", "Poughkeepsie", "Newark","Brooklyn","Amityville","Hicksville","Freeport"]
  states=["CT", "NJ", "NJ", "NJ", "NY", "NJ", "NY","NY","NY","NY"]
  occ = OnCallCaregiver.create!(education: Faker::University.name, credentials: Faker::Company.profession, about: Faker::Lorem.paragraph, specialities: Faker::Lorem.paragraph, experience: Faker::Lorem.paragraph, hobbies: Faker::Lorem.paragraph)
  occ = Login.create!(email: Faker::Internet.email, password:"123456", password_confirmation: "123456", address: Faker::Address.street_address, city: cities[i], state: states[i], zipcode: Faker::Address.zip, phone: "914-555-5555", loginable_id: occ.id, loginable_type: "OnCallCaregiver", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  i+=1
end
