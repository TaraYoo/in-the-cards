class DeckSerializer < ActiveModel::Serializer
  attributes :id, :question, :accuracy, :readings, :created_at, :updated_at
end
