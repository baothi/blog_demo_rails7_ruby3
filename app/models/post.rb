class Post < ApplicationRecord
  extend FriendlyId
  validates :title, presence: true, length: {minimum: 5, maximum: 50}
  validates :body, presence: true
  
  belongs_to :user
  # after_destroy {notify admin of bad behavior}2010
  has_many :comments, dependent: :destroy
  has_rich_text :body
  has_one :content, class_name: 'ActionText::RichText', as: :record, dependent: :destroy

  has_noticed_notifications model_name: 'Notification'
  has_many :notifications, through: :user

  friendly_id :title, use: %i[slugged history finders]
  def should_generate_new_friendly_id?
    title_changed? || slug.blank?
  end
  # after_create :oncreate
  # def oncreate
  #   Post.destroy_all
  # end
end
