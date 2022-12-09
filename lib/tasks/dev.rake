desc "Hydrate the database with some sample data to look at so that developing is easier"
task({ :sample_data => :environment}) do

  require 'faker'

  if Rails.env.production?
    ActiveRecord::Base.connection.tables.each do |t|
     ActiveRecord::Base.connection.reset_pk_sequence!(t)
    end
  end

  User.delete_all
  Event.delete_all
  Roster.delete_all

  users = [
    {id: 1, username: Faker::Name.first_name, password_digest: "password", bio: Faker::Quote.famous_last_words, profile_image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", email: Faker::Name.last_name + "@gmail.com", created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"}, 
    {id: 2, username: Faker::Name.first_name, password_digest: "password", bio: Faker::Quote.famous_last_words, profile_image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", email: Faker::Name.last_name + "@gmail.com", created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"}, 
    {id: 3, username: Faker::Name.first_name, password_digest: "password", bio: Faker::Quote.famous_last_words, profile_image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", email: Faker::Name.last_name + "@gmail.com", created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"}, 
    {id: 4, username: Faker::Name.first_name, password_digest: "password", bio: Faker::Quote.famous_last_words, profile_image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", email: Faker::Name.last_name + "@gmail.com", created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"}, 
    {id: 5, username: Faker::Name.first_name, password_digest: "password", bio: Faker::Quote.famous_last_words, profile_image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", email: Faker::Name.last_name + "@gmail.com", created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"}, 
    {id: 6, username: Faker::Name.first_name, password_digest: "password", bio: Faker::Quote.famous_last_words, profile_image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", email: Faker::Name.last_name + "@gmail.com", created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"}, 
    {id: 7, username: Faker::Name.first_name, password_digest: "password", bio: Faker::Quote.famous_last_words, profile_image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", email: Faker::Name.last_name + "@gmail.com", created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"}, 
    {id: 8, username: Faker::Name.first_name, password_digest: "password", bio: Faker::Quote.famous_last_words, profile_image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", email: Faker::Name.last_name + "@gmail.com", created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"}, 
    {id: 9, username: Faker::Name.first_name, password_digest: "password", bio: Faker::Quote.famous_last_words, profile_image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", email: Faker::Name.last_name + "@gmail.com", created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"}, 
    {id: 10, username: Faker::Name.first_name, password_digest: "password", bio: Faker::Quote.famous_last_words, profile_image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", email: Faker::Name.last_name + "@gmail.com", created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"}, 
  ]
 
  User.insert_all!(users)

  events = [
    {id: 1, event_name: "Homecoming Game", despriction: Faker::Quote.yoda, location: "Stagg Field", time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://pbs.twimg.com/media/CSGDAGNW0AEkf6v.jpg", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 2, event_name: "Hot Chocolate", despriction: Faker::Quote.yoda, location: "The Quad", time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://urbanmatter.com/chicago/wp-content/uploads/2017/09/14540532_1088283514625242_8179262523669741568_n1.jpg", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 3, event_name: "Lacrosse NCAA Semifinals", despriction: Faker::Quote.yoda, location: "Stagg Field", time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://www.uchicagowomenslacrossecamps.com/uploads/clubs/UniversityofChicagoWomensLacrosse/uchicagowlaxcallout12.jpg", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 4, event_name: "Maya Dance Recital", despriction: Faker::Quote.yoda, location: "Mandell Hall, Reynolds Club", time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://seechicagodance.com/sites/default/files/media/organizations/carissa/mandell%20hall.jpg", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 5, event_name: "Snowball Fight", despriction: Faker::Quote.yoda, location: "The Quad", time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "http://magazine.uchicago.edu/slideshow/1004_cultural_studies/images/one.jpg", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 6, event_name:"Trivia Night", despriction: Faker::Quote.yoda, location: "The Pub", time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://pbs.twimg.com/media/D5_ildLWkAADUbU?format=jpg&name=large", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 7, event_name: "Humans vs. Zombies", despriction: Faker::Quote.yoda, location: Faker::Address.full_address, time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://chicagomaroon.com/wp-content/uploads/2016/02/3-1-900x545.png", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 8, event_name: "Jazzin at the Shedd", despriction: Faker::Quote.yoda, location: "The Shedd Aquarium", time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: " https://media.timeout.com/images/101603765/image.jpg ", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 9, event_name: "Men’s Soccer Championship", despriction: Faker::Quote.yoda, location: Faker::Address.full_address, time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://pbs.twimg.com/media/FjE2DX5X0AEzMop.jpg", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 10, event_name: "Botany Pond Re-Opening", despriction: Faker::Quote.yoda, location: Faker::Address.full_address, time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://upload.wikimedia.org/wikipedia/commons/b/be/Hull_Court_From_Botany_Pond%2C_University_Of_Chicago_%28Anatomy_Building%29_%28NBY_415270%29.jpg", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 11, event_name: "Food Truck Friday", despriction: Faker::Quote.yoda, location: Faker::Address.full_address, time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://pbs.twimg.com/media/FZ5dE9NXkAIrZ1G?format=jpg&name=large", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 12, event_name: "Scav Hunt", despriction: Faker::Quote.yoda, location: Faker::Address.full_address, time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://64.media.tumblr.com/f90a1d7901929c7850ed89b34414f489/tumblr_nsiqt6diEk1r0p8d9o1_1280.jpg", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
  ]

  Event.insert_all!(events) 

  events = Event.all

  #rosters = [
  #  {id: 1, event_id: , guests_id: 1, created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
  #  {id: 2, event_id: 2, guests_id: 2, created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"}
  #]

  events.each do |an_event|
    roster = Roster.new
    roster.event_id = an_event.id
    roster.created_at = "2018-01-28 00:37:26"
    roster.updated_at = "2019-10-08 10:25:00"
    roster.guests_id = an_event.host_id
    roster.save
  end

  #Roster.insert_all!(rosters)

end
