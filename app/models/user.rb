class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attribute :name, :string

  has_many :subscriptions
  has_many :subscribed_cinemas, through: :subscriptions, source: :cinema
  has_many :votes
  has_many :articles, through: :subscriptions
end
