class ResponsesController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]

  def index
    if :contest_id
      @contest = Contest.find(params[:contest_id])
      @entries = @contest.entries
    else
      @entries = Entry.all
    end
  end

  def show
  	@entry = Entry.find(params[:id])
  end

  def new
    @contest= Contest.find(params[:contest_id])
    @game= Game.find(params[:game_id])
    @entry = current_user.entries.new(:contest_id => params[:contest_id])
  end

  def edit
  end

  def create
    @contest = Contest.find(params[:contest_id])
    @game = Game.find(params[:game_id])
    @entry = current_user.entries.build(entry_params)
    if @entry.save
      redirect_to entry_path(@entry), notice: 'Entry was successfully created.'
    else
      render action: 'new'
    end
  end


  def update
    @contest = Contest.find(params[:contest_id])
    if @entry.update(entry_params)
      redirect_to entry_path(@entry), notice: 'Entry was successfully created.'
    else
      render action: 'edit'
    end
  end


  def destroy
    @entry.destroy
    redirect_to entries_url
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params.require(:entry).permit(:selected_winner, :weight, :user_id, :game_id, :contest_id)
    end
end