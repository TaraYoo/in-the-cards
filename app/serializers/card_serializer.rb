class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :icon, :mean_up, :mean_reverse
  attribute :up do
    rand < 0.5
  end
end
