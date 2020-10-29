Administrator.destroy_all
Volunteer.destroy_all
Interview.destroy_all


admin1 = Administrator.create!(name: "Annie Smith", age: 32, email: "asmith1@nyp.org", password: "1234", department: "Child Life", position: "Coordinator", profile_image: "https://images.unsplash.com/photo-1573497491207-618cc224f243?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80.jpg")


vol1 = Volunteer.create!(name: "Brian Jewell", age: 27, email: "bjewell111@gmail.com", password: "1234", approved: true, profile_image: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/120594375_10159267444029131_7064634442067891781_o.jpg?_nc_cat=102&ccb=2&_nc_sid=ad2b24&_nc_ohc=ZZGmzoN_nlcAX9PQ_i4&_nc_ht=scontent-lga3-1.xx&oh=64043557365b5c3a77dd59e931ec60bb&oe=5FC0A1B1.jpg")
vol2 = Volunteer.create!(name: "Jack Scordato", age: 23, email: "jscordato12@gmail.com", password: "1234", approved: true, profile_image: "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80.jpg")
vol3 = Volunteer.create!(name: "Natalie Rosen", age: 18, email: "nrosen01@gmail.com", password: "1234", approved: true, profile_image: "https://images.unsplash.com/photo-1567131308618-79aa79b33cdd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60.jpg")
vol4 = Volunteer.create!(name: "Hannah Jung", age: 22, email: "hannahbanana33@gmail.com", password: "1234", approved: true, profile_image: "https://images.unsplash.com/photo-1543267570-95d78122e7e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80.jpg")

int1 = Interview.create!(date: "11-16-2019", time: "2:30 PM", link: "https://us02web.zoom.us/j/81173493206?pwd=eDZnZXFiTlVJdFc5ekhQa2RrdXpOdz09", notes: "He was a good candidate. He memorized all of the saftey protocols and he has a history working with children.", volunteer: vol1, administrator: admin1)
int2 = Interview.create!(date: "05-16-2019", time: "3:30 PM", link: "https://us02web.zoom.us/j/81173493206?pwd=eDZnZXFiTlVJdFc5ekhQa2RrdXpOdz09", notes: "Great candidate, was very impressed with his previous experiences. He's a student at Columbia and is looking to complete volunteer hours.", volunteer: vol2, administrator: admin1)
int3 = Interview.create!(date: "06-18-2020", time: "1:00PM", link: "https://us02web.zoom.us/j/81173493206?pwd=eDZnZXFiTlVJdFc5ekhQa2RrdXpOdz09", notes: "She was a good candidate. She used to baby sit and has experince with autistic children. She seems eager to help.", volunteer: vol3, administrator: admin1)
int4 = Interview.create!(date: "12-02-2019", time: "11:30 PM", link: "https://us02web.zoom.us/j/81173493206?pwd=eDZnZXFiTlVJdFc5ekhQa2RrdXpOdz09", notes: "She showed great understanding of all the protocols. She's a Pre-Med student at NYU and trying to get volunteer hours.", volunteer: vol4, administrator: admin1)