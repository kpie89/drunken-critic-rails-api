class RatingsController < ProtectedController
  before_action :set_rating, only: [:update, :destroy]
  # before_filter :set_user, only: [:index, :create]
  # GET /ratings
  # GET /ratings.json
  def index
    @ratings = User.ratings.all

    render json: @ratings
  end

  # GET /ratings/1
  # GET /ratings/1.json
  def show
    render json: @rating
  end

  # POST /ratings
  # POST /ratings.json
  def create
    @rating = current_user.ratings.build(rating_params)

    if @rating.save
      render json: @rating, status: :created, location: @rating
    else
      render json: @rating.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ratings/1
  # PATCH/PUT /ratings/1.json
  def update

    if @rating.update(rating_params)
      head :no_content
    else
      render json: @rating.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ratings/1
  # DELETE /ratings/1.json
  def destroy
    @rating.destroy

    head :no_content
  end

  private

    def set_rating
      @rating = current_user.ratings.find(params[:id])
    end

    def rating_params
      params.require(:rating).permit(:score, :desc, :user, :beer_id)
    end

end
