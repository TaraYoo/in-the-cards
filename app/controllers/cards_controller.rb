# frozen_string_literal: true

class CardsController < ProtectedController
  skip_before_action :authenticate, only: %i[index show draw]
  before_action :set_card, only: %i[show update destroy]

  # GET /cards
  def index
    @cards = Card.all

    render json: @cards
  end

  # GET /cards/1
  def show
    render json: @card
  end

  # custom GET /draw - draw three cards either up or reversed. Pass to a deck
  def draw
    @card_ids = Card.ids
    @three_chosen_ids = @card_ids.sample(3)
    @drawn_cards = []
    @three_chosen_ids.each do |id|
      @drawn_cards.push(Card.find(id))
    end

    render json: @drawn_cards
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = Card.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def card_params
      params.require(:card).permit(:name, :mean_reverse, :mean_up, :icon)
    end
end
