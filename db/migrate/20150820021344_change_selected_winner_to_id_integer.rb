class ChangeSelectedWinnerToIdInteger < ActiveRecord::Migration
  def change
  	remove_column :entries, :selected_winnner
  	add_column :entries, :selected_winner_id, :integer
  end
end
