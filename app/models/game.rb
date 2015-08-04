class Game < ActiveRecord::Base
	belongs_to :user
	has_many :entries
	has_many :game_gameset_relationships
	has_many :gamesets, through: :game_gameset_relationships

	accepts_nested_attributes_for :entries

	validates :league, :home_team, :away_team, :starttime, :name, :status,  presence: true
end