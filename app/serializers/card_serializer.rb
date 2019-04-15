class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :icon
  attribute :meaning do
    rand < 0.5 ? "#{object.mean_up}" : "#{object.mean_reverse}"
  end
end
