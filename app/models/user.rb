class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :contests
	has_many :entries
	has_many :games

	def score_test
		query = "select sum(weight) as score
												from entries
													inner join games on games.id = entries.game_id
												where selected_winner_id = winning_team_id and user_id = #{self.id}"
		results = User.connection.execute(query, :skip_logging)
	end
end
