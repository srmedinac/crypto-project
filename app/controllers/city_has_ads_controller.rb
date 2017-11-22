class CityHasAdsController < ApplicationController
  before_action :set_city_has_ad, only: [:show, :update, :destroy]

  # GET /city_has_ads
  def index
    @city_has_ads = CityHasAd.all

    render json: @city_has_ads
  end

  # GET /city_has_ads/1
  def show
    render json: @city_has_ad
  end

  # POST /city_has_ads
  def create
    @city_has_ad = CityHasAd.new(city_has_ad_params)

    if @city_has_ad.save
      render json: @city_has_ad, status: :created, location: @city_has_ad
    else
      render json: @city_has_ad.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /city_has_ads/1
  def update
    if @city_has_ad.update(city_has_ad_params)
      render json: @city_has_ad
    else
      render json: @city_has_ad.errors, status: :unprocessable_entity
    end
  end

  # DELETE /city_has_ads/1
  def destroy
    @city_has_ad.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city_has_ad
      @city_has_ad = CityHasAd.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def city_has_ad_params
      params.require(:city_has_ad).permit(:city_id, :ad_id)
    end
end
