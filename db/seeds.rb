# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(:email => 'adamgoth@gmail.com', :password => 'password', :password_confirmation => 'password')
User.create!(:email => 'testuser@gmail.com', :password => 'password', :password_confirmation => 'password')

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

Team.create!(league:  "MLB",
             city_name: "Chicago",
             team_name: "White Sox",
             full_team_name: "Chicago White Sox",
             team_abbreviation: "CWS")

Team.create!(league:  "MLB",
             city_name: "Cleveland",
             team_name: "Indians",
             full_team_name: "Cleveland Indians",
             team_abbreviation: "CLE")

Team.create!(league:  "MLB",
             city_name: "Kansas City",
             team_name: "Royals",
             full_team_name: "Kansas City Royals",
             team_abbreviation: "KCR")

Team.create!(league:  "MLB",
             city_name: "Detroit",
             team_name: "Tigers",
             full_team_name: "Tigers",
             team_abbreviation: "DET")

Team.create!(league:  "MLB",
             city_name: "Minnesota",
             team_name: "Twins",
             full_team_name: "Minnesota Twins",
             team_abbreviation: "MIN")

Team.create!(league:  "MLB",
             city_name: "Milwaukee",
             team_name: "Brewers",
             full_team_name: "Milwaukee Brewers",
             team_abbreviation: "MIL")

Team.create!(league:  "MLB",
             city_name: "Los Angeles",
             team_name: "Angels",
             full_team_name: "Los Angeles Angels",
             team_abbreviation: "LAA")

Team.create!(league:  "MLB",
             city_name: "Texas",
             team_name: "Rangers",
             full_team_name: "Texas Rangers",
             team_abbreviation: "TEX")

Team.create!(league:  "MLB",
             city_name: "Oakland",
             team_name: "Athletics",
             full_team_name: "Oakland Athletics",
             team_abbreviation: "OAK")

Team.create!(league:  "MLB",
             city_name: "Seattle",
             team_name: "Mariners",
             full_team_name: "Seattle Mariners",
             team_abbreviation: "SEA")

Team.create!(league:  "MLB",
             city_name: "Houston",
             team_name: "Astros",
             full_team_name: "Houston Astros",
             team_abbreviation: "HOU")

Team.create!(league:  "MLB",
             city_name: "New York",
             team_name: "Yankees",
             full_team_name: "New York Yankees",
             team_abbreviation: "NYY")

Team.create!(league:  "MLB",
             city_name: "Toronto",
             team_name: "Blue Jays",
             full_team_name: "Toronto Blue Jays",
             team_abbreviation: "TOR")

Team.create!(league:  "MLB",
             city_name: "Tampa Bay",
             team_name: "Rays",
             full_team_name: "Tampa Bay Rays",
             team_abbreviation: "TBR")

Team.create!(league:  "MLB",
             city_name: "Boston",
             team_name: "Red Sox",
             full_team_name: "Boston Red Sox",
             team_abbreviation: "BOS")

Team.create!(league:  "MLB",
             city_name: "Baltimore",
             team_name: "Orioles",
             full_team_name: "Baltimore Orioles",
             team_abbreviation: "BAL")

Game.create!(league: "MLB", starttime: "2015-08-24 00:00:00", name: "15/08/23-STL@CHC", status: "Not Started", home_team_id: 1, away_team_id: 2)

Game.create!(league: "MLB", starttime: "2015-08-24 00:00:00", name: "15/08/23-CIN@PIT", status: "Not Started", home_team_id: 3, away_team_id: 4)

Game.create!(league: "MLB", starttime: "2015-08-24 00:00:00", name: "15/08/23-ATL@NYM", status: "Not Started", home_team_id: 5, away_team_id: 6)

Game.create!(league: "MLB", starttime: "2015-08-24 00:00:00", name: "15/08/23-PHI@MIA", status: "Not Started", home_team_id: 7, away_team_id: 8)

Game.create!(league: "MLB", starttime: "2015-08-24 00:00:00", name: "15/08/23-LAD@WAS", status: "Not Started", home_team_id: 9, away_team_id: 10)

Game.create!(league: "MLB", starttime: "2015-08-24 00:00:00", name: "15/08/23-COL@SFG", status: "Not Started", home_team_id: 11, away_team_id: 12)

GameGamesetRelationship.create!(game_id: 1, gameset_id: 1)

GameGamesetRelationship.create!(game_id: 2, gameset_id: 1)

GameGamesetRelationship.create!(game_id: 3, gameset_id: 1)

GameGamesetRelationship.create!(game_id: 4, gameset_id: 1)

GameGamesetRelationship.create!(game_id: 5, gameset_id: 1)

GameGamesetRelationship.create!(game_id: 6, gameset_id: 1)

Gameset.create!(league: "MLB", starttime: "2015-08-24 00:00:00", game_id: nil, number_of_games: nil, name: "Sample Gameset 1")

Contest.create!(league: "MLB", name: "Sample Contest 1", starttime: "2015-08-24 00:00:00", size: 100, gameset_id: 1)