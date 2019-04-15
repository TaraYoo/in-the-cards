class DecksController < ProtectedController
  before_action :set_deck, only: [:show, :update, :destroy]

  # GET /decks
  def index
    @decks = current_user.decks

    render json: @decks
  end

  # GET /decks/1
  def show
    render json: @deck
  end

  # POST /decks
  def create
    @deck = current_user.decks.build(deck_params)

    # User signed in
    # User draws cards - gets 3 card ids
    # 3 card ids are stored in the front end
    # Could move the draw function over to decks controller

    puts @drawn_cards

    if @deck.save
      @card_ids = Card.ids
      @three_chosen_ids = @card_ids.sample(3)
      @drawn_cards = []
      @three_chosen_ids.each do |id|
        Reading.create(deck_id: @deck.id, card_id: id)
      end
      render json: @deck, status: :created, location: @deck
    else
      render json: @deck.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /decks/1
  def update
    if @deck.update(deck_params)
      render json: @deck
    else
      render json: @deck.errors, status: :unprocessable_entity
    end
  end

  # DELETE /decks/1
  def destroy
    @deck.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deck
      @deck = current_user.decks.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deck_params
      params.require(:deck).permit(:question, :accuracy)
    end
end
