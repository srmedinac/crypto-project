class AttentionsController < ApplicationController
  before_action :set_attention, only: [:show, :update, :destroy]

  # GET /attentions
  def index
    @attentions = Attention.all

    render json: @attentions
  end

  # GET /attentions/1
  def show
    render json: @attention
  end

  # POST /attentions
  def create
    @attention = Attention.new(attention_params)

    if @attention.save
      render json: @attention, status: :created, location: @attention
    else
      render json: @attention.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /attentions/1
  def update
    if @attention.update(attention_params)
      render json: @attention
    else
      render json: @attention.errors, status: :unprocessable_entity
    end
  end

  # DELETE /attentions/1
  def destroy
    @attention.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attention
      @attention = Attention.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def attention_params
      params.require(:attention).permit(:city_id, :description)
    end
end
