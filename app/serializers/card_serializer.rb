class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :icon
  attribute :meaning do
    rand < 0.5 ? object.mean_up.to_s : object.mean_reverse.to_s
  end
end
