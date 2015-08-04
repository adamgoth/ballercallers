class CreateGamesets < ActiveRecord::Migration
  def change
    create_table :gamesets do |t|
      t.string :league
      t.datetime :starttime
      t.integer :game_id
      t.integer :number_of_games
      t.string :name

      t.timestamps
    end
  end
end
