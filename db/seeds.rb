Administrator.destroy_all
Volunteer.destroy_all
Interview.destroy_all
Meeting.destroy_all


admin1 = Administrator.create!(name: "Annie Smith", age: 32, email: "asmith1@nyp.org", password: "1234", department: "Child Life", position: "Coordinator", profile_image: "https://images.unsplash.com/photo-1573497491207-618cc224f243?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80.jpg")


vol1 = Volunteer.create!(name: "Brian Jewell", age: 27, email: "bjewell111@gmail.com", password: "1234", approved: true, profile_image: "https://images.unsplash.com/photo-1592009309602-1dde752490ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80.jpeg")
vol2 = Volunteer.create!(name: "Jack Scordato", age: 23, email: "jscordato12@gmail.com", password: "1234", approved: true, profile_image: "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80.jpg")
vol3 = Volunteer.create!(name: "Natalie Rosen", age: 18, email: "nrosen01@gmail.com", password: "1234", approved: true, profile_image: "https://images.unsplash.com/photo-1567131308618-79aa79b33cdd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60.jpg")
vol4 = Volunteer.create!(name: "Hannah Jung", age: 22, email: "hannahbanana33@gmail.com", password: "1234", approved: true, profile_image: "https://images.unsplash.com/photo-1543267570-95d78122e7e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80.jpg")

int1 = Interview.create!(date: "11-16-2019", time: "2:30 PM", notes: "He was a good candidate. He memorized all of the saftey protocols and he has a history working with children.", volunteer: vol1, administrator: admin1)
int2 = Interview.create!(date: "05-16-2019", time: "3:30 PM", notes: "Great candidate, was very impressed with his previous experiences. He's a student at Columbia and is looking to complete volunteer hours.", volunteer: vol2, administrator: admin1)
int3 = Interview.create!(date: "06-18-2020", time: "1:00PM", notes: "She was a good candidate. She used to baby sit and has experince with autistic children. She seems eager to help.", volunteer: vol3, administrator: admin1)
int4 = Interview.create!(date: "12-02-2019", time: "11:30 PM", notes: "She showed great understanding of all the protocols. She's a Pre-Med student at NYU and trying to get volunteer hours.", volunteer: vol4, administrator: admin1)

meet1 = Meeting.create!(date: "11-10-2020", time: "2:00PM", link: "https://us02web.zoom.us/j/81173493206?pwd=eDZnZXFiTlVJdFc5ekhQa2RrdXpOdz09", notes: "I really enjoyed my time with Chris, he has so much energy! He has an infectious smile 😁.", volunteer: vol1, patient_name: "Christopher Robin", patient_age: 10, patient_info: "He loves playing Uno and computer games. He also likes to draw and color.")
meet2 = Meeting.create!(date: "11-11-2020", time: "3:00PM", link: "https://us02web.zoom.us/j/81173493206?pwd=eDZnZXFiTlVJdFc5ekhQa2RrdXpOdz09", notes: "He was a great to hang with. He is an amazing drawer. He had to leave early for a check-up.", volunteer: vol2, patient_name: "John Mark", patient_age: 13, patient_info: "He also likes to draw and color.")
meet3 = Meeting.create!(date: "11-09-2020", time: "12:00PM", link: "https://us02web.zoom.us/j/81173493206?pwd=eDZnZXFiTlVJdFc5ekhQa2RrdXpOdz09", notes: "She was such a sweetheart. I read her Dr.Seuss and she loved it. She left for lunch at around 12:30PM", volunteer: vol3, patient_name: "Jane O'neal", patient_age: 4, patient_info: "She loves to read, but especially being read to. She loves Dr. Seuss. Keep her company until lunch.")
meet4 = Meeting.create!(date: "11-02-2020", time: "11:00AM", link: "https://us02web.zoom.us/j/81173493206?pwd=eDZnZXFiTlVJdFc5ekhQa2RrdXpOdz09", notes: "She was great to spend time with. We mostly colored and painted some flowers. We talked about music as well.", volunteer: vol4, patient_name: "Maddie Newell", patient_age: 11, patient_info: "She likes to do adult coloring books and listen to BTS. She really likes them. Maybe listen to some music with her.")


