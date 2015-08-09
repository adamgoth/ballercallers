class UpdateGamesColumns < ActiveRecord::Migration
  def change
  	add_column :games, :winning_team_id, :integer
  	add_column :games, :losing_team_id, :integer
  	remove_column :games, :winning_team
  	remove_column :games, :losing_team
  	remove_column :games, :home_team
  	remove_column :games, :away_team
  end
end
