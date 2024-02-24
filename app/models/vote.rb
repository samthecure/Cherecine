class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :survey
  belongs_to :movie
end
