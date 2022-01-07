# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

User.destroy_all
Story.destroy_all
Response.destroy_all
Follow.destroy_all

ApplicationRecord.connection.reset_pk_sequence!('users')
ApplicationRecord.connection.reset_pk_sequence!('stories')
ApplicationRecord.connection.reset_pk_sequence!('responses')
ApplicationRecord.connection.reset_pk_sequence!('follows')



# USERS

10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  name = "#{first_name} #{last_name}"

  User.create!(
    fullname: name,
    email: Faker::Internet.email(name: name, separators: '_' ),
    password: "#{name.split.join("").downcase}"
  )
end



# DEMO USER


User.create!(
  fullname: "Guest User",
  email: "guestuser@gmail.com",
  password: "password",
  )



# STORIES

story1 = Story.create!(
  title: "To be, or not to be: that is the question.",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 1
)
photo1 = open("https://image.shutterstock.com/image-illustration/3d-beautiful-lake-tower-view-260nw-1810053601.jpg")
story1.photo.attach(io: photo1, filename: "3d-beautiful-lake-tower-view-260nw-1810053601.jpg")

story2 = Story.create!(
  title: "This above all: to thine own self be true.",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 2
)
photo2 = open("https://www.wallpapertip.com/wmimgs/74-744509_wallpapers-for-gt-beautiful-wallpaper-hd-for-facebook.jpg")
story2.photo.attach(io: photo2, filename: "74-744509_wallpapers-for-gt-beautiful-wallpaper-hd-for-facebook.jpg")

story3 = Story.create!(
  title: "Though this be madness, yet there is method in it.",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 3
)
photo3 = open("https://image.shutterstock.com/image-illustration/3d-beautiful-lake-tower-view-260nw-1810053601.jpg")
story3.photo.attach(io: photo3, filename: "3d-beautiful-lake-tower-view-260nw-1810053601.jpg")

story4 = Story.create!(
  title: "That it should come to this!",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 4
)
photo4 = open("https://www.wallpapertip.com/wmimgs/74-744509_wallpapers-for-gt-beautiful-wallpaper-hd-for-facebook.jpg")
story4.photo.attach(io: photo4, filename: "74-744509_wallpapers-for-gt-beautiful-wallpaper-hd-for-facebook.jpg")

story5 = Story.create!(
  title: "There is nothing either good or bad, but thinking makes it so.",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 5
)
photo5 = open("https://image.shutterstock.com/image-illustration/3d-beautiful-lake-tower-view-260nw-1810053601.jpg")
story5.photo.attach(io: photo5, filename: "3d-beautiful-lake-tower-view-260nw-1810053601.jpg")

story6 = Story.create!(
  title: "The lady doth protest too much, methinks.",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 6
)
photo6 = open("https://www.wallpapertip.com/wmimgs/74-744509_wallpapers-for-gt-beautiful-wallpaper-hd-for-facebook.jpg")
story6.photo.attach(io: photo6, filename: "num6.jpg")

story7 = Story.create!(
  title: "In my mind's eye.",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 7
)
photo7 = open("https://image.shutterstock.com/image-illustration/3d-beautiful-lake-tower-view-260nw-1810053601.jpg")
story7.photo.attach(io: photo7, filename: "3d-beautiful-lake-tower-view-260nw-1810053601.jpg")

story8 = Story.create!(
  title: "A little more than kin, and less than kind.",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 8
)
photo8 = open("https://www.wallpapertip.com/wmimgs/74-744509_wallpapers-for-gt-beautiful-wallpaper-hd-for-facebook.jpg")
story8.photo.attach(io: photo8, filename: "74-744509_wallpapers-for-gt-beautiful-wallpaper-hd-for-facebook.jpg")

story9 = Story.create!(
  title: "The play 's the thing wherein I'll catch the conscience of the king.",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 9
)
photo9 = open("https://www.wallpapertip.com/wmimgs/74-744509_wallpapers-for-gt-beautiful-wallpaper-hd-for-facebook.jpg")
story9.photo.attach(io: photo9, filename: "74-744509_wallpapers-for-gt-beautiful-wallpaper-hd-for-facebook.jpg")

story10 = Story.create!(
  title: "And it must follow, as the night the day, thou canst not then be false to any man.",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 10
)
photo10 = open("https://www.teahub.io/photos/full/78-781764_nice-and-beautiful-wallpapers-beautiful-background-images-nature.jpg")
story10.photo.attach(io: photo10, filename: "78-781764_nice-and-beautiful-wallpapers-beautiful-background-images-nature.jpg")

story11 = Story.create!(
  title: "Brevity is the soul of wit.",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 1
)
photo11 = open("https://www.wallpapertip.com/wmimgs/74-744509_wallpapers-for-gt-beautiful-wallpaper-hd-for-facebook.jpg")
story11.photo.attach(io: photo11, filename: "74-744509_wallpapers-for-gt-beautiful-wallpaper-hd-for-facebook.jpg")

story12 = Story.create!(
  title: "Doubt that the sun doth move, doubt truth to be a liar, but never doubt I love.",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 2
)
photo12 = open("https://www.teahub.io/photos/full/78-781764_nice-and-beautiful-wallpapers-beautiful-background-images-nature.jpg")
story12.photo.attach(io: photo12, filename: "78-781764_nice-and-beautiful-wallpapers-beautiful-background-images-nature.jpg")

story13 = Story.create!(
  title: "Rich gifts wax poor when givers prove unkind.",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 3
)
photo13 = open("https://www.wallpapertip.com/wmimgs/74-744509_wallpapers-for-gt-beautiful-wallpaper-hd-for-facebook.jpg")
story13.photo.attach(io: photo13, filename: "74-744509_wallpapers-for-gt-beautiful-wallpaper-hd-for-facebook.jpg")

story14 = Story.create!(
  title: "Do you think I am easier to be played on than a pipe?",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 4
)
photo14 = open("https://www.teahub.io/photos/full/78-781764_nice-and-beautiful-wallpapers-beautiful-background-images-nature.jpg")
story14.photo.attach(io: photo14, filename: "78-781764_nice-and-beautiful-wallpapers-beautiful-background-images-nature.jpg")

story15 = Story.create!(
  title: "I will speak daggers to her, but use none.",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 5
)
photo15 = open("https://www.wallpapertip.com/wmimgs/74-744509_wallpapers-for-gt-beautiful-wallpaper-hd-for-facebook.jpg")
story15.photo.attach(io: photo15, filename: "74-744509_wallpapers-for-gt-beautiful-wallpaper-hd-for-facebook.jpg")

story16 = Story.create!(
  title: "When sorrows come, they come not single spies, but in battalions.",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 6
)
photo16 = open("https://www.wallpapertip.com/wmimgs/74-744509_wallpapers-for-gt-beautiful-wallpaper-hd-for-facebook.jpg")
story16.photo.attach(io: photo16, filename: "74-744509_wallpapers-for-gt-beautiful-wallpaper-hd-for-facebook.jpg")

story17 = Story.create!(
  title: "Can one desire too much of a good thing?",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 7
)
photo17 = open("https://www.teahub.io/photos/full/78-781764_nice-and-beautiful-wallpapers-beautiful-background-images-nature.jpg")
story17.photo.attach(io: photo17, filename: "78-781764_nice-and-beautiful-wallpapers-beautiful-background-images-nature.jpg")

story18 = Story.create!(
  title: "I like this place and willingly could waste my time in it.",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 8
)
photo18 = open("https://www.wallpapertip.com/wmimgs/74-744509_wallpapers-for-gt-beautiful-wallpaper-hd-for-facebook.jpg")
story18.photo.attach(io: photo18, filename: "74-744509_wallpapers-for-gt-beautiful-wallpaper-hd-for-facebook.jpg")

story19 = Story.create!(
  title: "How bitter a thing it is to look into happiness through another man's eyes!",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 9
)
photo19 = open("https://www.teahub.io/photos/full/78-781764_nice-and-beautiful-wallpapers-beautiful-background-images-nature.jpg")
story19.photo.attach(io: photo19, filename: "78-781764_nice-and-beautiful-wallpapers-beautiful-background-images-nature.jpg")

story20 = Story.create!(
  title: "True is it that we have seen better days.",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 10
)
photo20 = open("https://www.teahub.io/photos/full/78-781764_nice-and-beautiful-wallpapers-beautiful-background-images-nature.jpg")
story20.photo.attach(io: photo20, filename: "78-781764_nice-and-beautiful-wallpapers-beautiful-background-images-nature.jpg")

story21 = Story.create!(
  title: "For ever and a day.",
  body: Faker::Hipster.paragraph_by_chars(characters: 2000, supplemental: false),
  author_id: 1
)
photo21 = open("https://image.shutterstock.com/image-illustration/3d-beautiful-lake-tower-view-260nw-1810053601.jpg")
story21.photo.attach(io: photo21, filename: "3d-beautiful-lake-tower-view-260nw-1810053601.jpg")



# RESPONSES

Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 1,
  story_id: 1,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 2,
  story_id: 1,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 3,
  story_id: 1,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 4,
  story_id: 1,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 5,
  story_id: 1,
  )

Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 6,
  story_id: 2,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 7,
  story_id: 2,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 8,
  story_id: 2,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 9,
  story_id: 2,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 10,
  story_id: 2,
  )

Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 1,
  story_id: 3,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 2,
  story_id: 3,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 3,
  story_id: 3,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 4,
  story_id: 3,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 5,
  story_id: 3,
  )

Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 6,
  story_id: 4,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 7,
  story_id: 4,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 8,
  story_id: 4,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 9,
  story_id: 4,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 10,
  story_id: 4,
  )

Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 1,
  story_id: 5,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 2,
  story_id: 5,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 3,
  story_id: 5,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 4,
  story_id: 5,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 5,
  story_id: 5,
  )

Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 6,
  story_id: 6,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 7,
  story_id: 6,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 8,
  story_id: 6,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 9,
  story_id: 6,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 10,
  story_id: 6,
  )

Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 1,
  story_id: 7,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 2,
  story_id: 7,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 3,
  story_id: 7,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 4,
  story_id: 7,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 5,
  story_id: 7,
  )

Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 6,
  story_id: 8,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 7,
  story_id: 8,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 8,
  story_id: 8,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 9,
  story_id: 8,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 10,
  story_id: 8,
  )

Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 1,
  story_id: 9,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 2,
  story_id: 9,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 3,
  story_id: 9,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 4,
  story_id: 9,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 5,
  story_id: 9,
  )

Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 6,
  story_id: 10,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 7,
  story_id: 10,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 8,
  story_id: 10,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 9,
  story_id: 10,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 10,
  story_id: 10,
  )

Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 1,
  story_id: 11,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 2,
  story_id: 12,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 3,
  story_id: 13,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 4,
  story_id: 14,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 5,
  story_id: 15,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 6,
  story_id: 16,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 7,
  story_id: 17,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 8,
  story_id: 18,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 9,
  story_id: 19,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 10,
  story_id: 20,
  )
Response.create!(
  body: Faker::TvShows::Seinfeld.quote,
  author_id: 1,
  story_id: 21,
  )

# FOLLOWS

Follow.create!(
  follower_id: 1,
  followee_id: 2,
  )
Follow.create!(
  follower_id: 1,
  followee_id: 3,
  )
Follow.create!(
  follower_id: 1,
  followee_id: 4,
  )
Follow.create!(
  follower_id: 1,
  followee_id: 5,
  )
Follow.create!(
  follower_id: 2,
  followee_id: 6,
  )
Follow.create!(
  follower_id: 2,
  followee_id: 7,
  )
Follow.create!(
  follower_id: 2,
  followee_id: 8,
  )
Follow.create!(
  follower_id: 2,
  followee_id: 9,
  )
Follow.create!(
  follower_id: 2,
  followee_id: 10,
  )
Follow.create!(
  follower_id: 3,
  followee_id: 1,
  )
Follow.create!(
  follower_id: 3,
  followee_id: 2,
  )
Follow.create!(
  follower_id: 3,
  followee_id: 4,
  )
Follow.create!(
  follower_id: 3,
  followee_id: 5,
  )
Follow.create!(
  follower_id: 3,
  followee_id: 6,
  )
Follow.create!(
  follower_id: 3,
  followee_id: 7,
  )
Follow.create!(
  follower_id: 3,
  followee_id: 8,
  )
Follow.create!(
  follower_id: 3,
  followee_id: 9,
  )
Follow.create!(
  follower_id: 3,
  followee_id: 10,
  )
Follow.create!(
  follower_id: 4,
  followee_id: 1,
  )
Follow.create!(
  follower_id: 4,
  followee_id: 2,
  )
Follow.create!(
  follower_id: 4,
  followee_id: 3,
  )
Follow.create!(
  follower_id: 4,
  followee_id: 6,
  )
Follow.create!(
  follower_id: 4,
  followee_id: 5,
  )
Follow.create!(
  follower_id: 5,
  followee_id: 6,
  )
Follow.create!(
  follower_id: 5,
  followee_id: 7,
  )
Follow.create!(
  follower_id: 5,
  followee_id: 8,
  )
Follow.create!(
  follower_id: 5,
  followee_id: 9,
  )
Follow.create!(
  follower_id: 5,
  followee_id: 10,
  )
Follow.create!(
  follower_id: 6,
  followee_id: 1,
  )
Follow.create!(
  follower_id: 6,
  followee_id: 2,
  )
Follow.create!(
  follower_id: 6,
  followee_id: 3,
  )
Follow.create!(
  follower_id: 6,
  followee_id: 4,
  )
Follow.create!(
  follower_id: 6,
  followee_id: 5,
  )
Follow.create!(
  follower_id: 7,
  followee_id: 6,
  )
Follow.create!(
  follower_id: 7,
  followee_id: 4,
  )
Follow.create!(
  follower_id: 7,
  followee_id: 8,
  )
Follow.create!(
  follower_id: 7,
  followee_id: 9,
  )
Follow.create!(
  follower_id: 7,
  followee_id: 10,
  )
Follow.create!(
  follower_id: 8,
  followee_id: 1,
  )
Follow.create!(
  follower_id: 8,
  followee_id: 2,
  )
Follow.create!(
  follower_id: 8,
  followee_id: 3,
  )
Follow.create!(
  follower_id: 8,
  followee_id: 4,
  )
Follow.create!(
  follower_id: 9,
  followee_id: 5,
  )
Follow.create!(
  follower_id: 9,
  followee_id: 6,
  )
Follow.create!(
  follower_id: 9,
  followee_id: 7,
  )
Follow.create!(
  follower_id: 9,
  followee_id: 8,
  )
Follow.create!(
  follower_id: 9,
  followee_id: 10,
  )
Follow.create!(
  follower_id: 10,
  followee_id: 1,
  )
Follow.create!(
  follower_id: 10,
  followee_id: 2,
  )
Follow.create!(
  follower_id: 10,
  followee_id: 5,
  )
Follow.create!(
  follower_id: 10,
  followee_id: 6,
  )
Follow.create!(
  follower_id: 10,
  followee_id: 7,
  )
