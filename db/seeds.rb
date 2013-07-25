season = Season.create :name => 'Summer 2013', :start => Date.parse('2013-07-21'), :finish => Date.parse('2013-08-25')

teams = ['Summit FC', 'Chaos', 'Wreck \'N Ballz', 'Scared Shotless', 'Avalanche', 'Mid-Life Crisis FC', 'FC United AC', 'Blokes + Sheilas']
teams.each do |name|
  Team.create name: name, seasons: [season]
end

allTeams = Team.all
allTeams.each do |home|
  start = DateTime.parse('2013-07-21 08:00:00')
  game = 0
  allTeams.each do |visitor|
    unless home.name === visitor.name
      Match.create season: season, home_team: home, visiting_team: visitor, start: start + (game * 65).minutes + game.weeks, duration: 50.minutes.to_i, home_score: Random.rand(5), visitor_score: Random.rand(5)
      game += 1
    end
  end
end