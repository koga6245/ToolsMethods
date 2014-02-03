    class WrongNumberOfPlayersError < StandardError ; end
    class NoSuchStrategyError < StandardError ; end
     
    def check_rules(rules)
        if rules == nil
          return false
        elsif !rules.is_a?(String)
            return false
        elsif !rules.downcase.match(/[rps]/)
          return false
        else
          return true
        end
    end
     
    def rps_game_winner(game)
        raise WrongNumberOfPlayersError unless game.length == 2
        raise NoSuchStrategyError unless check_rules(game[0][1]) && check_rules(game[1][1])
     
        winning_combinations = ["rs", "sp", "pr", "rr", "ss", "pp"]
        return winning_combinations.index(game[0][1].downcase+game[1][1].downcase) ? game[0] : game[1]
    end
     
    def contains_game(game)
      return game[0][0].is_a?(String)
    end
     
    def rps_tournament_winner(tournament)
      if contains_game(tournament)
        return rps_game_winner(tournament)
      end
      rps_game_winner [rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])]
    end
     
    game_list = [[ "Armando", "P" ], [ "Dave", "S" ]]
    puts game_list.to_s + " => " + rps_game_winner(game_list).to_s
    puts
    tournament_list = [
    [
    
    [ ["Armando", "P"], ["Dave", "S"] ],
    [ ["Richard", "R"], ["Michael", "S"] ],
    
    ],
    
    [
    [ ["Allen", "S"], ["Omer", "P"] ],
    [ ["David E.", "R"], ["Richard X.", "P"] ]
    
    ]
    
    ]
    
    puts tournament_list.to_s + " => " + rps_tournament_winner(tournament_list).to_s
     
    

