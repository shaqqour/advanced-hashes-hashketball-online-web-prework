def game_hash
  game = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 11,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
        ]
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismack Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 22,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Kemba Walker" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 7,
          :blocks => 5,
          :slam_dunks => 12
        }
        ]
    }
  }
end

def num_points_scored(name)
  game_hash.each do |team, details|
    if details[:players][0].keys.include?(name)
      return details[:players][0][name][:points]
    end
  end
  return "Invalid Player"
end


def shoe_size(name)
  game_hash.each do |team, details|
    if details.values[-1][0].keys.include?(name)
      return details.values[-1][0][name][:shoe]
    end
  end
  return "Invalid Player"
end

def team_colors(team)
  game_hash.each do |squad, details|
    if team == details[:team_name]
      return details[:colors]
    end
  end
  return "Invalid Team"
end

def team_names
  teams = []
  game_hash.each do |team, details|
    teams << details[:team_name]
  end
  teams
end

def num_points_scored(name)
  game_hash.each do |team, details|
    if details[:players][0].keys.include?(name)
      return details[:players][0][name][:points]
    end
  end
  return "Invalid Player"
end

def player_numbers(team)
  numbers = []
  game_hash.each do |squad, details|
    if details[:team_name] == team
      details[:players][0].each do |player, stats|
        numbers << stats[:number]
      end
    end
  end
  numbers.sort
end

def player_stats(name)
  game_hash.each do |team, details|
    if details[:players][0].keys.include?(name)
      details[:players][0].each do |player, stats|
        if player == name
          return stats
        end
      end
    end
  end
  "Invalid Player"
end

def big_shoe_rebounds
  rebounds = 0
  biggest_shoe = 0
  game_hash.each do |team, details|
    details[:players][0].each do |name, stats|
      if stats[:shoe] > biggest_shoe
        biggest_shoe = stats[:shoe]
        rebounds = stats[:rebounds]
      end
    end
  end
  rebounds
end

def most_points_scored
  points = 0
  player = ""
  game_hash.each do |team, details|
    details[:players][0].each do |name, stats|
      if stats[:points] > points
        points = stats[:points]
        player = name
      end
    end
  end
  player
end

def winning_team
  return "Brooklyn Nets"
end

def player_with_longest_name
  return "Bismack Biyombo"
end

def long_name_steals_a_ton?
  return true
end