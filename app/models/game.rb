class Game < ActiveRecord::Base
	belongs_to :user
	has_many :entries
	has_many :game_gameset_relationships
	has_many :gamesets, through: :game_gameset_relationships
	belongs_to :away_team, :class_name => 'Team', :foreign_key => 'away_team_id'
	belongs_to :home_team, :class_name => 'Team', :foreign_key => 'home_team_id'
	belongs_to :winning_team, :class_name => 'Team', :foreign_key => 'winning_team_id'
	belongs_to :losing_team, :class_name => 'Team', :foreign_key => 'losing_team_id'
	belongs_to :selected_winner, :class_name => 'Team', :foreign_key => 'selected_winner_id'

	accepts_nested_attributes_for :entries

	validates :league, :home_team_id, :away_team_id, :starttime, :name, :status,  presence: true
end