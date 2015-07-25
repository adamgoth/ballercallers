class Team < ActiveRecord::Base
	validates :league, :city_name, :team_name, :team_abbreviation, presence: true
	validates :full_team_name, uniqueness: true, presence:true
end