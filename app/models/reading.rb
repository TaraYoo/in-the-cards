class Reading < ApplicationRecord
  belongs_to :card
  belongs_to :deck
end
