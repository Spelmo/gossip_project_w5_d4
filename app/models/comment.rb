class Comment < ApplicationRecord
  belongs_to :user
  has_many :likes
  belongs_to :gossip
end
