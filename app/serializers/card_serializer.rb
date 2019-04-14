class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :mean_reverse, :mean_up, :icon
end
