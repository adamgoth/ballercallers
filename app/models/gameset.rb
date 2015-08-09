class Gameset < ActiveRecord::Base
	has_many :game_gameset_relationships
	has_many :games, through: :game_gameset_relationships
	has_many :contests

	def eastern_time
		starttime.advance(:hours => -5)
	end

end