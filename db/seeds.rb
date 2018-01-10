# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

league = League.create({name: 'Premier League', country: 'India', start_date: Date.new(2018, 1, 9), end_date: Date.new(2018, 1, 18)})

club_1 = Club.create({ name: 'Real Madrid' })
club_2 = Club.create({ name: 'Barcelona' })
club_3 = Club.create({ name: 'Manchester United' })
club_4 = Club.create({ name: 'Bayern Munich' })
club_5 = Club.create({ name: 'Arsenal' })

team_1 = Player.create([{ first_name: 'Cristiano', last_name: 'Ronaldo', club_id: club_1.id },
          { first_name: 'Zinédine', last_name: 'Zidane', club_id: club_1.id },
          { first_name: 'Raúl', last_name: 'González Blanco', club_id: club_1.id },
          { first_name: 'Ronaldo', last_name: 'Luis Nazário de Lima', club_id: club_1.id },
          { first_name: 'Alfredo', last_name: 'di Stéfano', club_id: club_1.id },
          { first_name: 'Iker', last_name: 'Casillas', club_id: club_1.id },
          { first_name: 'David', last_name: 'Beckham', club_id: club_1.id },
          { first_name: 'Roberto', last_name: 'Carlos', club_id: club_1.id },
          { first_name: 'Mesut', last_name: 'Ozil', club_id: club_1.id },
          { first_name: 'Ruud', last_name: 'van Nistelrooy', club_id: club_1.id },
          { first_name: 'Luís', last_name: 'Figo', club_id: club_1.id }])

team_2 = Player.create([{ first_name: 'Lionel', last_name: 'Messi', club_id: club_2.id },
          { first_name: 'Diego', last_name: 'Armando Maradona', club_id: club_2.id },
          { first_name: 'Ronaldinho', last_name: 'Gaúcho', club_id: club_2.id },
          { first_name: 'Xavi', last_name: 'Hernández', club_id: club_2.id },
          { first_name: 'Andres', last_name: 'Iniesta', club_id: club_2.id },
          { first_name: 'Neymar', last_name: 'Jr', club_id: club_2.id },
          { first_name: 'Johan', last_name: 'Cruyff', club_id: club_2.id },
          { first_name: 'Ronaldo', last_name: 'Lima', club_id: club_2.id },
          { first_name: 'Carles', last_name: 'Puyol', club_id: club_2.id },
          { first_name: 'Michael', last_name: 'Laudrup', club_id: club_2.id },
          { first_name: 'Romário', last_name: 'de Souza Faria', club_id: club_2.id }])

team_3 = Player.create([{ first_name: 'Cristiano', last_name: 'dos Santos Aveiro Ronaldo', club_id: club_3.id },
          { first_name: 'Wayne', last_name: 'Rooney', club_id: club_3.id },
          { first_name: 'Ryan', last_name: 'Giggs', club_id: club_3.id },
          { first_name: 'George', last_name: 'Best', club_id: club_3.id },
          { first_name: 'Bobby', last_name: 'Charlton', club_id: club_3.id },
          { first_name: 'Eric', last_name: 'Cantona', club_id: club_3.id },
          { first_name: 'David', last_name: 'Robert Joseph Beckham', club_id: club_3.id },
          { first_name: 'Robin', last_name: 'van Persie', club_id: club_3.id },
          { first_name: 'Paul', last_name: 'Scholes', club_id: club_3.id },
          { first_name: 'Peter', last_name: 'Shmeichel', club_id: club_3.id },
          { first_name: 'Ruud', last_name: 'Van Nistelrooy', club_id: club_3.id }])

team_4 = Player.create([{ first_name: 'Manuel', last_name: 'Neuer', club_id: club_4.id },
          { first_name: 'Philipp', last_name: 'Lahm', club_id: club_4.id },
          { first_name: 'Jerome', last_name: 'Boateng', club_id: club_4.id },
          { first_name: 'Mats', last_name: 'Hummels', club_id: club_4.id },
          { first_name: 'David', last_name: 'Alaba', club_id: club_4.id },
          { first_name: 'Arturo', last_name: 'Vidal', club_id: club_4.id },
          { first_name: 'Thiago', last_name: 'Alcantara', club_id: club_4.id },
          { first_name: 'Robert', last_name: 'Lewandowski', club_id: club_4.id },
          { first_name: 'Lother', last_name: 'Mattaus', club_id: club_4.id },
          { first_name: 'Mehmet', last_name: 'Scholl', club_id: club_4.id },
          { first_name: 'Sepp', last_name: 'Maier', club_id: club_4.id }])

team_5 = Player.create([{ first_name: 'David', last_name: 'Seaman', club_id: club_5.id },
          { first_name: 'Tony', last_name: 'Adams', club_id: club_5.id },
          { first_name: 'Liam', last_name: 'Brady', club_id: club_5.id },
          { first_name: 'Patrick', last_name: 'Vieira', club_id: club_5.id },
          { first_name: 'Alan', last_name: 'Smith', club_id: club_5.id },
          { first_name: 'Thierry', last_name: 'Henry', club_id: club_5.id },
          { first_name: 'Dennis', last_name: 'Bergkamp', club_id: club_5.id },
          { first_name: 'Alex', last_name: 'James', club_id: club_5.id },
          { first_name: 'Frank', last_name: 'Mclintock', club_id: club_5.id },
          { first_name: 'Ashley', last_name: 'Cole', club_id: club_5.id },
          { first_name: 'Cliff', last_name: 'Bastin', club_id: club_5.id }])

stadium_1 = Stadium.create({ name: 'Real Madrid', location: 'Spain', capacity: 40000, club_id: club_1.id })
stadium_2 = Stadium.create({ name: 'Barcelona', location: 'Catalonia', capacity: 35000, club_id: club_2.id })
stadium_3 = Stadium.create({ name: 'Manchester United', location: 'England', capacity: 30000, club_id: club_3.id })
stadium_4 = Stadium.create({ name: 'Bayern Munich', location: 'Germany', capacity: 45000, club_id: club_4.id })
stadium_5 = Stadium.create({ name: 'Arsenal', location: 'England', capacity: 50000, club_id: club_5.id })

game_1 = Game.create({ home_club_id: club_1.id, away_club_id: club_2.id, league_id: league.id, stadium_id: stadium_1.id, date: Date.new(2018, 1, 9), time: Time.new(2018, 1, 9, 16) })
game_2 = Game.create({ home_club_id: club_3.id, away_club_id: club_4.id, league_id: league.id, stadium_id: stadium_3.id, date: Date.new(2018, 1, 9), time: Time.new(2018, 1, 9, 19) })
game_3 = Game.create({ home_club_id: club_2.id, away_club_id: club_1.id, league_id: league.id, stadium_id: stadium_2.id, date: Date.new(2018, 1, 10), time: Time.new(2018, 1, 10, 16) })
game_4 = Game.create({ home_club_id: club_4.id, away_club_id: club_3.id, league_id: league.id, stadium_id: stadium_4.id, date: Date.new(2018, 1, 10), time: Time.new(2018, 1, 10, 19) })
game_5 = Game.create({ home_club_id: club_1.id, away_club_id: club_3.id, league_id: league.id, stadium_id: stadium_1.id, date: Date.new(2018, 1, 11), time: Time.new(2018, 1, 11, 16) })
game_6 = Game.create({ home_club_id: club_4.id, away_club_id: club_5.id, league_id: league.id, stadium_id: stadium_4.id, date: Date.new(2018, 1, 11), time: Time.new(2018, 1, 11, 19) })
game_7 = Game.create({ home_club_id: club_3.id, away_club_id: club_1.id, league_id: league.id, stadium_id: stadium_3.id, date: Date.new(2018, 1, 12), time: Time.new(2018, 1, 12, 16) })
game_8 = Game.create({ home_club_id: club_5.id, away_club_id: club_4.id, league_id: league.id, stadium_id: stadium_5.id, date: Date.new(2018, 1, 12), time: Time.new(2018, 1, 12, 19) })
game_9 = Game.create({ home_club_id: club_1.id, away_club_id: club_4.id, league_id: league.id, stadium_id: stadium_1.id, date: Date.new(2018, 1, 13), time: Time.new(2018, 1, 13, 16) })
game_10 = Game.create({ home_club_id: club_2.id, away_club_id: club_5.id, league_id: league.id, stadium_id: stadium_2.id, date: Date.new(2018, 1, 13), time: Time.new(2018, 1, 13, 19) })
game_11 = Game.create({ home_club_id: club_4.id, away_club_id: club_1.id, league_id: league.id, stadium_id: stadium_4.id, date: Date.new(2018, 1, 14), time: Time.new(2018, 1, 14, 16) })
game_12 = Game.create({ home_club_id: club_5.id, away_club_id: club_2.id, league_id: league.id, stadium_id: stadium_5.id, date: Date.new(2018, 1, 14), time: Time.new(2018, 1, 14, 19) })
game_13 = Game.create({ home_club_id: club_2.id, away_club_id: club_3.id, league_id: league.id, stadium_id: stadium_2.id, date: Date.new(2018, 1, 15), time: Time.new(2018, 1, 15, 16) })
game_14 = Game.create({ home_club_id: club_1.id, away_club_id: club_5.id, league_id: league.id, stadium_id: stadium_1.id, date: Date.new(2018, 1, 15), time: Time.new(2018, 1, 15, 19) })
game_15 = Game.create({ home_club_id: club_3.id, away_club_id: club_2.id, league_id: league.id, stadium_id: stadium_3.id, date: Date.new(2018, 1, 16), time: Time.new(2018, 1, 16, 16) })
game_16 = Game.create({ home_club_id: club_5.id, away_club_id: club_1.id, league_id: league.id, stadium_id: stadium_5.id, date: Date.new(2018, 1, 16), time: Time.new(2018, 1, 16, 19) })
game_17 = Game.create({ home_club_id: club_2.id, away_club_id: club_4.id, league_id: league.id, stadium_id: stadium_2.id, date: Date.new(2018, 1, 17), time: Time.new(2018, 1, 17, 16) })
game_18 = Game.create({ home_club_id: club_3.id, away_club_id: club_5.id, league_id: league.id, stadium_id: stadium_3.id, date: Date.new(2018, 1, 17), time: Time.new(2018, 1, 17, 19) })
game_19 = Game.create({ home_club_id: club_4.id, away_club_id: club_2.id, league_id: league.id, stadium_id: stadium_4.id, date: Date.new(2018, 1, 18), time: Time.new(2018, 1, 18, 16) })
game_20 = Game.create({ home_club_id: club_5.id, away_club_id: club_3.id, league_id: league.id, stadium_id: stadium_5.id, date: Date.new(2018, 1, 19), time: Time.new(2018, 1, 18, 19) })
