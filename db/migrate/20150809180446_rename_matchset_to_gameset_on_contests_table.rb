class RenameMatchsetToGamesetOnContestsTable < ActiveRecord::Migration
  def change
  	remove_column :contests, :matchset_id
  	add_column :contests, :gameset_id, :integer
  end
end
