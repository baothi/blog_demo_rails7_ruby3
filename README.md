# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 3.0 and rails version 7.0

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
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

