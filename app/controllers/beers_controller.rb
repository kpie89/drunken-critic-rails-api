class BeersController < ApplicationController
  before_action :set_beer, only: [:show, :update, :destroy]

  # caches_page :index
  # GET /beers
  # GET /beers.json
  def search_by_key
    @beer = Beer.search_by_key(params[:search_key])

    render json: @beer
  end

  def show
    render json: @beer
  end

  # GET /beer/rand
  # GET /beers/rand.json
  def random_beer
    @beer = Beer.random_beer
    render json: @beer
  end

  #GET /breweries
  #GET /breweries.json
  def breweries
    @breweries = Beer.breweries
    render json: @breweries
  end

  # GET /brewery/random
  def random_brewery
    @brewery = Beer.random_brewery
    render json: @brewery
  end

  # GET /categories
  # GET /categories.json
  def categories
    @categories = Beer.categories
    render json: @categories
  end

  #GET /styles
  def styles
    @styles = Beer.styles
    render json: @styles
  end

  def hops
    @hops = Beer.hops
    render json: @hops
  end
  # # POST /beers
  # # POST /beers.json
  # def create
  #   @beer = Beer.new(beer_params)
  #
  #   if @beer.save
  #     render json: @beer, status: :created, location: @beer
  #   else
  #     render json: @beer.errors, status: :unprocessable_entity
  #   end
  # end
  #
  # # PATCH/PUT /beers/1
  # # PATCH/PUT /beers/1.json
  # def update
  #   @beer = Beer.find(params[:id])
  #
  #   if @beer.update(beer_params)
  #     head :no_content
  #   else
  #     render json: @beer.errors, status: :unprocessable_entity
  #   end
  # end
  #
  # # DELETE /beers/1
  # # DELETE /beers/1.json
  # def destroy
  #   @beer.destroy
  #
  #   head :no_content
  # end
  #
  private

    def set_beer
      @beer = Beer.find(params[:id])
    end
  #
  #   def beer_params
  #     params.require(:beer).permit(:name,, :desc, :abv, :ibu)
  #   end
end
