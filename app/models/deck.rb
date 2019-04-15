class Deck < ApplicationRecord
  has_many :readings, dependeng: :destroy
  has_many :cards, through: :readings
end
