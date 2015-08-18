class GamesetsController < ApplicationController
  before_action :set_return, only: [:show, :edit, :update, :destroy]

  def index
    @gamesets = Gameset.all
  end

  def show
    @gameset = Gameset.find(params[:id])
  end

  def new
    @gameset = Gameset.new
  end

  def edit
    @gameset = Gameset.find(params[:id])
  end

  def create
  @return = Gameset.new(return_params)
    if @return.save
      redirect_to @return, notice: 'Gameset was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @return.update(return_params)
      redirect_to @return, notice: 'Gameset was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
  @return.destroy
    redirect_to returns_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_return
      @return = Gameset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def return_params
      params.require(:gameset).permit(:user_id, :league, :name, :starttime, :game_id, :game_ids => [])
    end
end
