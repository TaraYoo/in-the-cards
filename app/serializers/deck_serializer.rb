class DeckSerializer < ActiveModel::Serializer
  attributes :id, :question, :accuracy, :cards, :created_at, :updated_at
end
