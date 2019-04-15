class DeckSerializer < ActiveModel::Serializer
  attributes :id, :question, :accuracy

  attribute :formatted_cards do
    formatted = []
    object.readings.each do |reading|
      formatted.push({
        id: reading.card_id,
        up: reading.up
        })
    end
    object.cards.each do |card|
      formatted.each do |format_object|
        if card.id == format_object[:id]
          format_object[:name] = card.name
          format_object[:meaning] = format_object[:up] ? card[:mean_up] : card[:mean_reverse]
          format_object[:icon] = card.icon
        end
      end
    end
    formatted
  end
end
