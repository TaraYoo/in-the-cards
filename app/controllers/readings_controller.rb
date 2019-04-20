class ReadingsController < ProtectedController
  before_action :set_reading, only: [:show, :update, :destroy]

  # GET /readings
  def index
    @readings = current_user.readings

    render json: @readings

  # GET /readings/1
  def show
    render json: @reading
  end

  # POST /readings
  def create
    @reading = current_user.readings.build(reading_params)

    if @reading.save
      render json: @reading, status: :created, location: @reading
    else
      render json: @reading.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /readings/1
  def update
    if @reading.update(reading_params)
      render json: @reading
    else
      render json: @reading.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reading
      @reading = current_user.readings.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reading_params
      params.require(:reading).permit(:deck_id, :card_id)
    end
end
