class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :user_id
      t.integer :contest_id
      t.integer :game_id
      t.string :selected_winner
      t.integer :weight

      t.timestamps
    end
  end
end
