class DeckSerializer < ActiveModel::Serializer
  attributes :id, :question, :accuracy

  # 2019-04-15T18:04:50.890Z

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
          format_object[:mean_up] = card.mean_up
          format_object[:mean_reverse] = card.mean_reverse
        end
      end
    end
    formatted
  end

  attribute :reading_date do
    object.created_at.strftime('%F')
  end

  attribute :updated_on do
    object.updated_at.strftime('%F')
  end
end
