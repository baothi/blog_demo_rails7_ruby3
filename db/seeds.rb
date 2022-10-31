# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "test@example.com",name: "test", password: "password", password_confirmation: "password")
User.create(email: "John@example.com",name: "john", password: "password", password_confirmation: "password")

10.times do |x|
  Post.create(title: "Title #{User.first.name} #{x}", body: "Body #{x} Words go here IDK", user_id: User.first.id)
end

user = User.find_by_id(2)

10.times do |x|
  Post.create(title: "Title #{user.name} #{x}", body: "Body #{x} Words go here IDK", user_id: user.id)
end