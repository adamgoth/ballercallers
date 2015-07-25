class CreateTeamsTable < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :league
      t.string :city_name
      t.string :team_name
      t.string :full_team_name
      t.string :team_abbreviation

      t.timestamps
    end
  end
end