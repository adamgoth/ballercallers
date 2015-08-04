class CreateGameGamesetRelationship < ActiveRecord::Migration
  def change
    create_table :game_gameset_relationships do |t|
      t.integer :game_id
      t.integer :gameset_id

      t.timestamps
    end
  end
end
