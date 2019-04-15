class Deck < ApplicationRecord
  has_many :readings, dependent: :destroy
  has_many :cards, through: :readings
  belongs_to :user
  validates :user, presence: true
end
