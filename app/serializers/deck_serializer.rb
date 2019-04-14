class DeckSerializer < ActiveModel::Serializer
  attributes :id, :question, :accuracy
end
