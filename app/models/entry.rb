class Entry < ActiveRecord::Base
	belongs_to :user
	belongs_to :contest
	belongs_to :game
	belongs_to :selected_winner, :class_name => 'Team', :foreign_key => 'selected_winner_id'

	validates :user_id, :contest_id, :game_id, :selected_winner_id, :weight, presence: true
end