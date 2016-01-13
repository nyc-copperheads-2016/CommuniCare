pc1 = PrimaryCaregiver.create!(about_me: "Hey, my name is John and I am in need of help with a family member")
pcl1 = Login.create!(email: "johnc@care.com", password:"123456", password_confirmation: "123456", address: Faker::Address.street_address, city: "Rego Park", state: "NY", zipcode: 11374, phone: "914-555-5555", loginable_id: pc1.id, loginable_type: "PrimaryCaregiver", first_name: "John", last_name: "Carol")
patient = Patient.create!(gender: "Male", habits: "Can throw tantrums out of the blue.  My brother can sometimes harm himself if nervous", routine: "N/A", ailments: "Anxiety and Drepression", medication: "Xanax", name: "Philip", background: "Attended Harvard and dropped out because of his health situation.  This has had a terrible effect on his confidence and has heightened his anxiety.", age: 41, hobbies: "Trivia, movies", primary_caregiver: pc1)



pc2 = PrimaryCaregiver.create!(about_me: "My name is Lisa and I am looking for weekly care for my father, who has Parkinson's Disease.I am one of four children.  However, I am the only person taking care of my father, although he lives with me and my husband. It is tough because all of the responsibility falls on my shoulders.  I have found myself burnt out and in need of a break-even if this break is in the form of a trip to the local coffee shop or to get my nails done.  This is time for me to reclaim myself!  I am very flexible and looking for a CommuniHelper that is friendly, astute, reliable, and knowledageble about Parkinson's Disease.")
pcl2 = Login.create!(email: "lisag@gmail.com", password:"123456", password_confirmation: "123456", address: Faker::Address.street_address, city: "Rego Park", state: "NY", zipcode: 11374, phone: "718-555-5555", loginable_id: pc2.id, loginable_type: "PrimaryCaregiver", first_name: "Lisa", last_name: "Graco")
patient = Patient.create!(gender: "Male", habits: "My father sometimes has difficulty remembering things and events and will often have trouble with movement. I have noticed that Dad's gait and movement has slowed down significantly and this has caused him to have mobility issues.", routine: "Dad is an early riser so he likes to wake around 7am or so.  When he is up, he makes it a point to read the newspaper while sitting at the foot of the bed.  Dad loves his coffee strong and drinks 4 cups a day (although we discourage him from doing so.  Dad also watches Let's Make A Deal and Jeopardy.  He likes to play cards and chess and was quite good in his younger years.", ailments: "Parkinson's Disease", medication: "Levodopa and  pramipexole ", name: "Reggie", background: "Worked for MTA for 35 years and was married for 41 to the love of his life.  Used to play Bocce Ball with his friends in the neighborhood.  Was very social but has become more withdrawn with the advancement of his disease. He has been sick for 5 years",  age: 80, hobbies: "chess, cards, Bocce Ball, TV, reading", primary_caregiver: pc2)



pc3 = PrimaryCaregiver.create!(about_me: "My name is Jerry. I sometimes need care for my mom so I can run out to the gym and handle other errands.")
pcl3 = Login.create!(email: "jerryt@gmail.com", password:"123456", password_confirmation: "123456", address: Faker::Address.street_address, city: "Saint Albans", state: "NY", zipcode: "11412", phone: "718-555-5555", loginable_id: pc3.id, loginable_type: "PrimaryCaregiver", first_name: "Jerry", last_name: "Thompson")
patient = Patient.create!(gender: "Female", habits: "Mom forgets a lot, so you might have to repeat yourself.  Also, she has the habit of leaving the stove on and/or the oven. She has a tendency to worry a lot about stuff.", routine: "She doesn't wake up until 11am or so. She likes to eat pizza for lunch, fish and a salad for dinner, and watches CNN or Lifetime Movie Network ALL day.", ailments: "slight Dementia and Anxiety", medication: "N/A",name: "Symira", background: "Outgoing personaility and loved to shop.  She was very stylish. Worked as a tenured English Professor at CUNY. One of 13 children. Traveled the world.", age: 69, hobbies: "TV, talking about style and entertainment news, sitting on her balcony, people watching", primary_caregiver: pc3)




pc4 = PrimaryCaregiver.create!(about_me: "Hey community! I am Nina and I am looking for some help with my son, who has Cerebral Palsy. ")
pcl4 = Login.create!(email: "ninab@gmail.com", password:"123456", password_confirmation: "123456", address: Faker::Address.street_address, city: "Brooklyn", state: "NY", zipcode: "11205", phone: "718-555-5555", loginable_id: pc4.id, loginable_type: "PrimaryCaregiver", first_name: "Nina", last_name: "Bethel")
patient = Patient.create!(gender: "Male", habits: "he has a tendency to become shy and withdrawn if he feels he is not being listened to or heard-especially if he is trying to tell you something he learned while reading his history book.", routine: "My son likes to watch Teen Titans, read about history and science, and loves to go out and explore Manhattan.", medication: "diazepam",name: "Ace", background: "Loving child and likes to have fun and laugh. Was diagnosed at a young age with CP. He looks forward to attending his sister's basketball games", age: 13, hobbies: "Reading, talking, exploring new places", primary_caregiver: pc4)



pc5 = PrimaryCaregiver.create!(about_me: "In need of on-call help for my aging aunt. This will really help me because my work schedule is changing and I don't have coverage for her.")
pcl5 = Login.create!(email: "chloez@gmail.com", password:"123456", password_confirmation: "123456", address: Faker::Address.street_address, city: "Bronx", state: "NY", zipcode: "10467", phone: "718-555-5555", loginable_id: pc5.id, loginable_type: "PrimaryCaregiver", first_name: "chole", last_name: "Zah")
patient = Patient.create!(gender: "Female", habits: "bites her fingernails when she is stressed.  Locks herself in the bathroom when she is feeling sad.", routine: "Auntie likes to get up around 7am to watch CBS Morning News. She loves Charlie Rose.  She also eats a light breakfast and likes to go to the senior center at times to hang with her friends.  As she gets older, she does not want to do that as much.", medication: "N/A",name: "Sadie", background: "Has a Ph.D in Physics and loves to talk science. She was married 4 times. Loves to talk travel and about all of the places she has seen.", age: 65, hobbies: "Reading, travel, sewing", primary_caregiver: pc5)

pc6 = PrimaryCaregiver.create!(about_me: "In need of on-call help for my wife.")
pcl6 = Login.create!(email: "jessicav@gmail.com", password:"123456", password_confirmation: "123456", address: Faker::Address.street_address, city: "New York", state: "NY", zipcode: "10009", phone: "718-555-5555", loginable_id: pc6.id, loginable_type: "PrimaryCaregiver", first_name: "Jessica", last_name: "Valentino")
patient = Patient.create!(gender: "Female", habits: "N/A", routine: "She has a tendency to wake up in the morning and sing (beautifully). She also does this right before lunch. She says it helps her focus.", medication: "N/A",name: "Naima", background: "Former singer and performer.", age: 34, hobbies: "singing, writing, reflecting on good times", primary_caregiver: pc6)


occ1 = OnCallCaregiver.create!(education: "University of Pittsburgh", credentials: "Bachelors Degree in Nursing", about: "I am a healthcare professional that has a desire to help my community", specialities: "Depression, Anxiety, Mental Health Issues", experience: "I worked for 10 years at County General Hospital in the ER unit.  I also worked as a CNA at Helpful Hands Nursing Home.",hobbies: "cooking, hanging out with my family, broadway")
occl1 = Login.create!(email: "Jeremyd@gmail.com", password:"123456", password_confirmation: "123456", address: Faker::Address.street_address, city: "Jersey City", state: "NJ", zipcode: "07097" , phone: "973-555-5555", loginable_id: occ1.id, loginable_type: "OnCallCaregiver", first_name: "Jeremy", last_name: "Delvin")


occ2 = OnCallCaregiver.create!(education: "DePaul University", credentials: "Bachelors Degree in Finance", about: "I want to make a difference in my community by helping others. My mother suffers from Parkinson's Disease and I have looked after her for as long as I can remember.", specialities: "Parkinson's Disease, Anxiety", experience: "I have experience taking care of my mother", hobbies: "College Basketball, football")
occl2 = Login.create!(email: "harlowg@gmail.com", password:"123456", password_confirmation: "123456", address: Faker::Address.street_address, city: "Brooklyn", state: "NY", zipcode:"11236", phone: "347-555-5555", loginable_id: occ2.id, loginable_type: "OnCallCaregiver", first_name: "Harlow", last_name: "Garro")


occ3 = OnCallCaregiver.create!(education: "Seton Hall University", credentials: "Bachelors Degree in Political Science", about: "I love to play chess and cards. I was very close with my grandpa, who needed assistance, and I want to help others.", specialities: "Parkinson's Disease, Anxiety", experience: "I have experience taking care of my grandpa", hobbies: "chess, cards")
occl3 = Login.create!(email: "jadef@gmail.com", password:"123456", password_confirmation: "123456", address: Faker::Address.street_address, city: "Brooklyn", state: "NY", zipcode:"11225", phone: "718-555-5555", loginable_id: occ3.id, loginable_type: "OnCallCaregiver", first_name: "Jade", last_name: "Ferris")


occ4 = OnCallCaregiver.create!(education: "Stevens High School", credentials: "CNA", about: "I became a CNA to help other people in need and I would like to be there for people in my community.", specialities: "Parkinson's Disease, anxiety,", experience: "I have experience assisting people in a nursing home setting(helping with handing out food, wheeling patients to activities, etc). I currently work as a CNA. ", hobbies: "shopping, tv, reading about entertainment news")
occl4 = Login.create!(email: "chandap@gmail.com", password:"123456", password_confirmation: "123456", address: Faker::Address.street_address, city: "Brooklyn", state: "NY", zipcode:"11225", phone: "718-555-5555", loginable_id: occ4.id, loginable_type: "OnCallCaregiver", first_name: "Chanda", last_name: "Peats")


occ5 = OnCallCaregiver.create!(education: "Albans Community College", credentials: "Associates Degree", about: "I believe in helping people. I have helped people since I was young.", specialities: "N/A", experience: "I have experience working with special needs children at a summer camp for 6 summers in a row.", hobbies: " computers, video games, history")
occl5 = Login.create!(email: "marvinf@gmail.com", password:"123456", password_confirmation: "123456", address: Faker::Address.street_address, city: "Jersey City", state: "NJ", zipcode:"11225", phone: "718-555-5555", loginable_id: occ5.id, loginable_type: "OnCallCaregiver", first_name: "Marvin", last_name: "Terry")


occ6 = OnCallCaregiver.create!(education: "Harvard", credentials: "Masters Degree In Engineering", about: "I want to help",specialities: "N/A", experience: "N/A", hobbies: "business, travel, style")
occl6 = Login.create!(email: "serenef@gmail.com", password:"123456", password_confirmation: "123456", address: Faker::Address.street_address, city: "Jamaica", state: "NY", zipcode:"11374", phone: "718-555-5555", loginable_id: occ6.id, loginable_type: "OnCallCaregiver", first_name: "Serene", last_name: "Feller")




i=0
while i < 10
  cities=["Stamford", "Trenton", "Paterson", "Cherry Hill", "Poughkeepsie", "Newark","Brooklyn","Amityville","Hicksville","Freeport", "Bakersfield", "Glen Cove", "Seattle", "Fresno", "Miami","Little Ferry", "Glen Falls", "Kingston", "Long Beach", "Bronx", "Jamaica", "Saint Albans", "Rego Park", "Brooklyn", "New York"]
  states=["CT", "NJ", "NJ", "NJ", "NY", "NJ", "NY","NY","NY","NY", "CA","WA","CA","FL","NJ","NY","NY", "NY", "NY", "NY", "NY", "NY", "NY","NY"]
  occ = OnCallCaregiver.create!(education: Faker::University.name, credentials: Faker::Company.profession, about: Faker::Lorem.paragraph, specialities: Faker::Lorem.paragraph, experience: Faker::Lorem.paragraph, hobbies: Faker::Lorem.paragraph)
  occ = Login.create!(email: Faker::Internet.email, password:"123456", password_confirmation: "123456", address: Faker::Address.street_address, city: cities[i], state: states[i], zipcode: Faker::Address.zip, phone: "914-555-5555", loginable_id: occ.id, loginable_type: "OnCallCaregiver", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  i+=1
end
cr = CaregiverRelationship.create!(primary_caregiver: pc1)
appointment = Appointment.create!(caregiver_relationship: cr, date: Date.new(2016,1,10), start_time: DateTime.now, duration: 3, pc_confirmed: false, occ_confirmed: false)

oc = CaregiverRelationship.create!(on_call_caregiver: occ1)
appointment = Appointment.create!(caregiver_relationship: oc, date: Date.new(2016,1,10), start_time: DateTime.now, duration: 3, pc_confirmed: false, occ_confirmed: false)
