class AdHasCategoriesController < ApplicationController
  before_action :set_ad_has_category, only: [:show, :update, :destroy]

  # GET /ad_has_categories
  def index
    @ad_has_categories = AdHasCategory.all

    render json: @ad_has_categories
  end

  # GET /ad_has_categories/1
  def show
    render json: @ad_has_category
  end

  # POST /ad_has_categories
  def create
    @ad_has_category = AdHasCategory.new(ad_has_category_params)

    if @ad_has_category.save
      render json: @ad_has_category, status: :created, location: @ad_has_category
    else
      render json: @ad_has_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ad_has_categories/1
  def update
    if @ad_has_category.update(ad_has_category_params)
      render json: @ad_has_category
    else
      render json: @ad_has_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ad_has_categories/1
  def destroy
    @ad_has_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad_has_category
      @ad_has_category = AdHasCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ad_has_category_params
      params.require(:ad_has_category).permit(:category_id, :ad_id)
    end
end
