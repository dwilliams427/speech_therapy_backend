class Tag < ApplicationRecord
  belongs_to :user
  has_many :card_tags
  has_many :tags, through: :card_tags
end
