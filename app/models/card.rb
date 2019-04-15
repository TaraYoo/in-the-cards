class Card < ApplicationRecord
  has_many :readings, dependent: :destroy
  has_many :decks, through: :readings
end
