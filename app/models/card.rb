class Card < ApplicationRecord
  has_many :card_tags
  has_many :tags, through: :card_tags
  belongs_to :user
end
