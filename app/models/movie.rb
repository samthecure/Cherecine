class Movie < ApplicationRecord
  belongs_to :survey
  has_many :votes

  validates :title, presence: true
  validates :summary, presence: true
  validates :director, presence: true
  validates :release_date, presence: true
end
