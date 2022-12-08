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
  
  #count = 1
  #25.times do
  #  user = User.new
  #  user.id = count
  #  user.username = Faker::Name.first_name 
  #  user.password = "password"
  #  user.bio = Faker::Quote.famous_last_words
  #  user.profile_image = "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1"
  #  user.email = user.username + "@gmail.com"
  #  user.save
  #  count += 1
  #end

  events = [
    {id: 1, event_name: Faker::Team.sport, despriction: Faker::Quote.yoda, location: Faker::Address.full_address, time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 2, event_name: Faker::Team.sport, despriction: Faker::Quote.yoda, location: Faker::Address.full_address, time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 3, event_name: Faker::Team.sport, despriction: Faker::Quote.yoda, location: Faker::Address.full_address, time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 4, event_name: Faker::Team.sport, despriction: Faker::Quote.yoda, location: Faker::Address.full_address, time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 5, event_name: Faker::Team.sport, despriction: Faker::Quote.yoda, location: Faker::Address.full_address, time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 6, event_name: Faker::Team.sport, despriction: Faker::Quote.yoda, location: Faker::Address.full_address, time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 7, event_name: Faker::Team.sport, despriction: Faker::Quote.yoda, location: Faker::Address.full_address, time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 8, event_name: Faker::Team.sport, despriction: Faker::Quote.yoda, location: Faker::Address.full_address, time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 9, event_name: Faker::Team.sport, despriction: Faker::Quote.yoda, location: Faker::Address.full_address, time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 10, event_name: Faker::Team.sport, despriction: Faker::Quote.yoda, location: Faker::Address.full_address, time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 11, event_name: Faker::Team.sport, despriction: Faker::Quote.yoda, location: Faker::Address.full_address, time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
    {id: 12, event_name: Faker::Team.sport, despriction: Faker::Quote.yoda, location: Faker::Address.full_address, time: Faker::Time.forward(days: 5,  period: :evening, format: :long), image: "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1", host_id: rand(1..10), created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
  ]

  Event.insert_all!(events)

  #count = 1
  #25.times do 
  #  event = Event.new
  #  event.id = count
  #  count += 1
  #  event.event_name = Faker::Team.sport
  #  event.despriction = Faker::Quote.yoda
  #  event.location = Faker::Address.full_address
  #  event.time = Faker::Time.forward(days: 5,  period: :evening, format: :long)
  #  event.image = "https://robohash.org/eligendiprovidentsed.png?size=300x300&set=set1"
  #  event.host_id = users.sample
  #  event.save
  #end  

  events = Event.all

  #rosters = [
  #  {id: 1, event_id: Event.all.sample, guests_id: User.all.sample, created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"},
  #  {id: 2, event_id: Event.all.sample, guests_id: User.all.sample, created_at: "2018-01-28 00:37:26", updated_at: "2019-10-08 10:25:00"}
  #]

  Roster.insert_all!(rosters)
  
  #25.times do 
  #  roster = Roster.new
  #  event_id = events.sample
  #  guests_id = users.sample
  #end

end
