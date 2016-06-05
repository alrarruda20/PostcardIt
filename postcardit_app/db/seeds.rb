# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


usernames = ["alice", "bob", "carol", "dave", "ellen"]

usernames.each do |username|
  user = User.new
  user.username = username
  user.email = "#{username}@example.com"
  user.password = "12341234"
  user.save
end

puts "There are now #{User.count} users in the database."

users = User.all

User.all.each do |user|
  photo_info.each do |photo_hash|
    filename = photo_hash[:image].split('/').last

    photo = Photo.new
    photo.image = File.open(Rails.root.join('lib', 'assets', filename).to_s)
    photo.caption = photo_hash[:caption]
    photo.user_id = user.id
    photo.save

    puts photo.errors.full_messages
  end
end

puts "There are now #{Photo.count} photos in the database."

photos = Photo.all

photos.each do |photo|
  rand(6).times do
    comment = photo.comments.build
    comment.user = users.sample
    comment.body = Faker::Hacker.say_something_smart
    comment.save
  end
end
