collection @clubs
  
  node(:id) { |obj| obj['id'] }
  node(:name) { |obj| obj['name'] }
  node(:games_played) { |obj| obj['games_played'] }
  node(:win) { |obj| obj['win'] }
  node(:lost) { |obj| obj['lost'] }
  node(:drawn) { |obj| obj['drawn'] }
  node(:points) { |obj| obj['points'] }
  node(:goal_difference) { |obj| obj['goal_difference'] }
  node(:goals_scored) { |obj| obj['goals_scored'] }