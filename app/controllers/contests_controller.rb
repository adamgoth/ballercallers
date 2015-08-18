class ContestsController < ApplicationController
  before_action :set_contest, only: [:show, :edit, :update, :destroy]
  #before_action :correct_user, only: [:edit, :update, :destroy]
  #before_action :authenticate_user!, except: [:index, :show]

  def index
    @contests = Contest.all
  end

  def show
    @contest = Contest.find(params[:id])
    @entries = Entry.where(contest_id: @contest.id).all
  end

  def new
    @contest = Contest.new
  end

  def edit
  end

  def create
    @contest = Contest.new(contest_params)
    @contest.starttime = @contest.gameset.starttime
    if @contest.save
      redirect_to @contest, notice: 'Contest was successfully created.'
    else
      render action: 'new'
    end
  end


  def update
    if @contest.update(contest_params)
      redirect_to @contest, notice: 'Contest was successfully updated.'
    else
      render action: 'edit'
    end
  end


  def destroy
    @contest.destroy
    redirect_to contests_url
  end

  def entries
    @users = User.all
    @contest = Contest.find(params[:id])
    @games = @contest.games
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contest
      @contest = Contest.find(params[:id])
    end

    def correct_user
      @contest = current_user.contests.find_by(id: params[:id])
      redirect_to contests_path, notice: "Not authorized to edit this contest" if @contest.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contest_params
      params.require(:contest).permit(:user_id, 
                                    :league, 
                                    :name, 
                                    :starttime, 
                                    :game_id, 
                                    :game_ids => [], 
                                    :games_attributes => [:id, :name,
                                    :entries_attributes => [:id, :user_id, :game_id, :weight, :selected_winner, :contest_id]
                                    ])
    end
end
