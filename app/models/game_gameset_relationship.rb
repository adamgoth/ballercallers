class GameGamesetRelationship < ActiveRecord::Base
	belongs_to :game
	belongs_to :gameset

	validates :game_id, presence: true
	validates :gameset_id, presence: true
end


