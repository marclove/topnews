class HackerNewsStory < ApplicationRecord
  has_many :likes
  has_many :users, through: :likes
end
