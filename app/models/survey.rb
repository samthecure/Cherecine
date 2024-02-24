class Survey < ApplicationRecord
  belongs_to :cinema
  has_many :movies
  has_many :votes

  validates :theme, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
