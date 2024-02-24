class Cinema < ApplicationRecord
  has_many :surveys
  has_many :movies, through: :surveys
  has_many :articles
  has_many :subscriptions
  has_many :subscribed_users, through: :subscriptions, source: :user

end
