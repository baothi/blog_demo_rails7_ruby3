# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 3.0 and rails version 7.0
on rails 7 show images with rich_text_area
https://github.com/libvips/ruby-vips

db:migrate runs (single) migrations that have not run yet.

db:create creates the database

db:drop deletes the database

db:schema:load creates tables and columns within the existing database following schema.rb. This will delete existing data.

db:setup does db:create, db:schema:load, db:seed

db:reset does db:drop, db:setup

db:migrate:reset does db:drop, db:create, db:migrate



rails action_text install
rails g migration add_user_to_posts user:belongs_to

https://github.com/excid3/noticed
bundle add ransack
rails g migration add_role_to_user role:integer

rails g controller admin index posts comments users show_post

bundle add friendly_id
rails g migration AddSlugToPosts slug:uniq
rails g friendly_id
rails db:migrate

bundle add bullet
rails g bullet:install
rails g migration AddCommentCounterCacheToPosts comments_count:integer
rails g migration PopulatePostCommentsCount --force

class PopulatePostCommentsCount < ActiveRecord::Migration[7.0]
  def change
    Post.all.each do |post|
      <!-- post.update_column(:comment_count, post.comments.count) -->
      Post.reset_counters(post.id, :comments)
    end
  end
end

bundle add activerecord-import


EDITOR="code --wait" rails credentials:edit --environment=development
rails g migration ChangeJsonColumnInNotifications
{"comment":{"_aj_globalid":"gid://blog-demo/Comment/51"},"post":{"_aj_globalid":"gid://blog-demo/Post/10"},"_aj_symbol_keys":["comment","post"]}

bundle add wicked
rails g migration AddNamesToUser first_name last_name
rails g model address street city state zip:integer country user:references
rails g migration AddAddressToUser address:references
rails g migration RemoveNameFromUser name


rails g scaffold category name display_in_nav:boolean
rails g migration AddCategoryToPosts category:belongs_to


# login stripe

stripe login -i
stripe listen --forward-to localhost:3000/pay/webhooks/stripe
sk_test_51IuXqOBmTxR6KoZuGFYUsktxAUQu0Wa79GOvU73Y0tEcKE9zWSb7IipyjVxTnlhMbyrR3GuhwNweTZyef7VnXFOs00yJ0E7cP0

https://stackoverflow.com/questions/27452731/stripe-no-api-key-provided
EDITOR="code --wait" rails credentials:edit --environment=development

bin/rails pay:install:migrations
rails g controller checkouts
rails g migration AddBillingLocationToUser city country
rails g migration AddCustomerInfoToUser subscription_status subscription_end_date:datetime subscription_start_date:datetime

# create project
rails g scaffold project title link

