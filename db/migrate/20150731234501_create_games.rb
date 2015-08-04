class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :league
      t.datetime :starttime
      t.string :home_team
      t.string :away_team
      t.string :name
      t.integer :gameset_id
      t.string :status
      t.integer :home_team_score
      t.integer :away_team_score
      t.string :winning_team
      t.string :losing_team

      t.timestamps
    end
  end
end
