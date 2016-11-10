class Api::V1::Mp3sController < ApplicationController
  before_action :set_mp3, only: [:show, :update, :destroy]

  # GET /mp3s
  def index
    @mp3s = Mp3.all
    @mp3s
  end

  # GET /mp3s/1
  def show
    respond_with  @mp3
  end

  # POST /mp3s
  def create
    @mp3 = Mp3.new(mp3_params)

    if @mp3.save
      render json: @mp3, status: :created, location: @mp3
    else
      render json: @mp3.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mp3s/1
  def update
    if @mp3.update(mp3_params)
      render json: @mp3
    else
      render json: @mp3.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mp3s/1
  def destroy
    @mp3.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mp3
      @mp3 = Mp3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mp3_params
      params.require(:mp3).permit(:album, :title, :artist, :genre, :email)
    end
end
