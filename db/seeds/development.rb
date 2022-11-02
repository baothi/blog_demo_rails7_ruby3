# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding development database ....."
admin = User.create(email: "admin@example.com", 
                              password: "password", 
                              password_confirmation: "password",
                              first_name: "user",
                              last_name: "admin",
                              role: User.roles[:admin]
                            )
john = User.create!(email: "john@example.com",
                            password: "password", 
                            password_confirmation: "password",
                            first_name: "user",
                            last_name: "John"
                          )
Address.create(street: '123 Main St',
                 city: 'Anytown',
                 state: 'CA',
                 zip: '12345',
                 country: 'USA',
                 user: admin)
Address.create(street: '123 Main St',
                 city: 'Anytown',
                 state: 'CA',
                 zip: '12345',
                 country: 'USA',
                 user: john)

Category.create(name: 'Uncategorized', display_in_nav: true)
Category.create(name: 'Cars', display_in_nav: false)
Category.create(name: 'Bikes', display_in_nav: true)
Category.create(name: 'Boats', display_in_nav: true)

elapsed = Benchmark.measure do
  # posts = []
  # 10.times do |x|
  #   puts "Creating post #{x}"
  #   post = Post.new(title: "Title #{x}",
  #                   body: "Body #{x} Words go here Idk",
  #                   user: admin)

  #   5.times do |y|
  #     puts "Creating comment #{y} for post #{x} with user #{john.email}"
  #     post.comments.build(body: "Comment #{y}",
  #                         user: john)
  #   end
  #   posts.push(post)
  # end
  # Post.import(posts, recursive: true)

  10.times do |x|
    post = Post.create(title: "Title #{User.first.full_name} #{x}", 
                       body: "Body #{x} Words go here IDK", 
                       user_id: User.first.id,
                      category: Category.first)
    5.times do |y|
      Comment.create(body: "Comment #{y}", user_id: User.second.id, post_id: post.id)
    end
  end
end
puts "Seeded development DB in #{elapsed.real} seconds"

