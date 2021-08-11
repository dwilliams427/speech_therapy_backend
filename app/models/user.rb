class User < ApplicationRecord
  has_secure_password
  has_many :cards
  validates :email, presence: true, uniqueness: true
end
