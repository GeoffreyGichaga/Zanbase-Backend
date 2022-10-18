# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding....."
Tutorial.create(image_url: "https://cms-assets.tutsplus.com/cdn-cgi/image/width=850/uploads/users/2533/posts/39043/image-upload/woman-working-from-home-2021-08-30-07-47-54-utc.jpg",title: "Working Remote",
     description: "15 Top Tips to Work Effectively From Home (Remotely in 2022)",
     video_url: "https://www.youtube.com/watch?v=8QpHdZsHoe4"
    )

User.create(firstname: "Geoffrey ",lastname: "Gichaga", email: "geofrey@zanaafrica.org", username: "geofrey@zanaafrica.org", role: "Admin", supervisor: "Angie" ,password: "test",org: "ZAP")

puts "Done Seeding "



# t.string "firstname"
# t.string "lastname"
# t.string "email"
# t.string "username"
# t.string "role"
# t.string "supervisor"
# t.string "password_digest"


# User.create(firstname: "Geoffrey ",lastname: "Gichaga", email: "geofrey@zanaafrica.org", username: "geofrey@zanaafrica.org", role: "Admin", supervisor: "Angie",password: "test")
# firstname,:lastname,:email,:username,:role,:supervisor,:password,:org