class Team < ActiveRecord::Base
	has_many :games

	validates :league, :city_name, :team_name, :team_abbreviation, presence: true
	validates :full_team_name, uniqueness: true, presence:true
end