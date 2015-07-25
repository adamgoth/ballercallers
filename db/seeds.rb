# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#User.create!(email: "adamgoth@gmail.com",
#             password: "adamgoth",
#             password_confirmation: "adamgoth")

Team.create!(league:  "MLB",
             city_name: "Chicago",
             team_name: "Cubs",
             full_team_name: "Chicago Cubs",
             team_abbreviation: "CHC")

Team.create!(league:  "MLB",
             city_name: "St. Louis",
             team_name: "Cardinals",
             full_team_name: "St. Louis Cardinals",
             team_abbreviation: "STL")

Team.create!(league:  "MLB",
             city_name: "Pittsburgh",
             team_name: "Pirates",
             full_team_name: "Pittsburgh Pirates",
             team_abbreviation: "PIT")

Team.create!(league:  "MLB",
             city_name: "Cincinnati",
             team_name: "Reds",
             full_team_name: "Cincinnati Reds",
             team_abbreviation: "CIN")

Team.create!(league:  "MLB",
             city_name: "Milwaukee",
             team_name: "Brewers",
             full_team_name: "Milwaukee Brewers",
             team_abbreviation: "MIL")

Team.create!(league:  "MLB",
             city_name: "New York",
             team_name: "Mets",
             full_team_name: "New York Mets",
             team_abbreviation: "NYM")