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

Team.create!(league:  "MLB",
             city_name: "Atlanta",
             team_name: "Braves",
             full_team_name: "Atlanta Braves",
             team_abbreviation: "ATL")

Team.create!(league:  "MLB",
             city_name: "Miami",
             team_name: "Marlines",
             full_team_name: "Miami Marlins",
             team_abbreviation: "MIA")

Team.create!(league:  "MLB",
             city_name: "Philadelphia",
             team_name: "Phillies",
             full_team_name: "Philadelphia Phillies",
             team_abbreviation: "PHI")

Team.create!(league:  "MLB",
             city_name: "Washington",
             team_name: "Nationals",
             full_team_name: "Washington Nationals",
             team_abbreviation: "WAS")

Team.create!(league:  "MLB",
             city_name: "Los Angeles",
             team_name: "Dodgers",
             full_team_name: "Los Angeles Dodgers",
             team_abbreviation: "LAD")

Team.create!(league:  "MLB",
             city_name: "San Francisco",
             team_name: "Giants",
             full_team_name: "San Francisco Giants",
             team_abbreviation: "SFG")

Team.create!(league:  "MLB",
             city_name: "Colorado",
             team_name: "Rockies",
             full_team_name: "Colorado Rockies",
             team_abbreviation: "COL")

Team.create!(league:  "MLB",
             city_name: "San Diego",
             team_name: "Padres",
             full_team_name: "San Diego Padres",
             team_abbreviation: "SDP")

Team.create!(league:  "MLB",
             city_name: "Arizona",
             team_name: "Diamondbacks",
             full_team_name: "Arizona Diamondbacks",
             team_abbreviation: "ARI")