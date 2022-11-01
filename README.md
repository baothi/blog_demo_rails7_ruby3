# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 3.0 and rails version 7.0

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


EDITOR="code --wait" rails credentials:edit
rails g migration ChangeJsonColumnInNotifications
{"comment":{"_aj_globalid":"gid://blog-demo/Comment/51"},"post":{"_aj_globalid":"gid://blog-demo/Post/10"},"_aj_symbol_keys":["comment","post"]}