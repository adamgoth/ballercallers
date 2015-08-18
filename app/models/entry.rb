class Entry < ActiveRecord::Base
	belongs_to :user
	belongs_to :contest
	belongs_to :game

	validates :user_id, :contest_id, :game_id, :selected_winner, :weight, presence: true
end