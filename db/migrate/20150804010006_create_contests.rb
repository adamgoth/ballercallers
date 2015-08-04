class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :league
      t.string :name
      t.datetime :starttime
      t.integer :size
      t.integer :user_id
      t.integer :matchset_id

      t.timestamps
    end
  end
end
