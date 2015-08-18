class Contest < ActiveRecord::Base
	belongs_to :user
	belongs_to :gameset

	has_many :games, through: :gameset
	has_many :entries, dependent: :destroy

	accepts_nested_attributes_for :games

 	def winner_id
 		@winner = entries.detect { |entry| entry.entry_sum == entries.map(&:entry_sum).max }
 		@winner.id
 	end

  	def winner_username
 		@winner = entries.detect { |entry| entry.entry_sum == entries.map(&:entry_sum).max }
 		@winner.user.username
 	end

	def gameset_games
		gameset.games.map(&:name) if gameset
		#matchset.games.map{|g| "#{g.name} #{g.starttime}"}w
	end

	def eastern_time
		starttime.advance(:hours => -5)
	end

	def entries_count
		Entry.distinct.count('user_id')
	end

	def entries
		Entry.where(contest_id: id).order(:game_id).all
	end

	validates :league, :gameset_id, :name, :starttime, presence: true
end