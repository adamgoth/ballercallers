class GameGamesetRelationshipsController < ApplicationController
  before_action :set_game_gameset_relationship, only: [:show, :edit, :update, :destroy]

  def index
    @game_gameset_relationships = GameGamesetRelationship.all
  end

  def show
  end

  def new
    @game_gameset_relationship = GameGamesetRelationship.new
  end

  def edit
  end

  def create
    @game_gameset_relationship = GameGamesetRelationship.new(game_gameset_relationship_params)
    if @game_gameset_relationship.save
      redirect_to @game_gameset_relationship, notice: 'Game Gameset Relationship was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @game_gameset_relationship.update(game_gameset_relationship_params)
      redirect_to @game_gameset_relationship, notice: 'Game Gameset Relationship was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @game_gameset_relationship.destroy
      redirect_to game_gameset_relationships_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_gameset_relationship
      @game_gameset_relationship = GameGamesetRelationship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_gameset_relationship_params
      params.require(:game_gameset_relationship).permit(:game_id, :gameset_id)
    end
end