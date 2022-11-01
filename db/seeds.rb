# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "admin@example.com",name: "test", 
  password: "password", 
  password_confirmation: "password",
  role: User.roles[:admin]
)
User.create(email: "John@example.com",name: "john", password: "password", password_confirmation: "password")



elapsed = Benchmark.measure do
  # posts = []
  # comments = []
  # dean =  User.first
  # john = User.second
  # 10.times do |x|
  #   puts "Creating post #{x}"
  #   post = Post.new(title: "Title #{x}",
  #                   body: "Body #{x} Words go here Idk",
  #                   user: dean)

  #   5.times do |y|
  #     puts "Creating comment #{y} for post #{x} with user #{john.email}"
  #     comment = post.comments.build(body: "Comment #{y}",
  #                         user: john)
  #     # Comment.create(body: "Comment #{y}", user: User.second, post_id: post.id)
  #     comments.push(comment)
  #   end

  #   posts.push(post)
    
  # end
  # Post.import(posts, recursive: true)
  10.times do |x|
    post = Post.create(title: "Title #{User.first.name} #{x}", body: "Body #{x} Words go here IDK", user_id: User.first.id)
    5.times do |y|
      Comment.create(body: "Comment #{y}", user_id: User.second.id, post_id: post.id)
    end
  end
  # Comment.import(comments, recursive: true)
end
puts "Elapsed time is #{elapsed.real} seconds"

# Comment.import(comments)

