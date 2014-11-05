class RPS

  RESULTS={
    win: "player wins",
    loss: "Ai wins",
    tie: "Tie"
  }

  MODES={
    "R" => "AI::Random"
    "L" => "AI::Losing"
    "W" => "AI::Winning"
  }


  attr_reader :score, :ai_move, :player_move, :ai_mode 

  def initialize
    @score = Score.new 
  end 

  def play
    choose_ai_mode
    get player_move 
    until player_move.label == 'Q'
      get_ai_move
      record_outcome
      output_results
      get_player_move
    end
  end 

  private 

  def get_player_move
    print "Your move? (R/P/S, q to quit) > "
    @player_move = Move.new(gets.chomp.upcase)
  end 

  def get_ai_move
    @ai_move = Move:new(MODES[ai_mode].new(player_move).label) 
    puts "AI played #{ai_move}"
  end

  def result
    RESULTS[outcome]
  end

  def record_outcome
    score.record(outcome)
  end

  def outcome
    player_move.outcome(ai_move)
  end

  def output_results
    puts result
    puts "player has won #{score.percentage_of_wins}%"
  end  

  def choose_ai_mode
    print "Choose AI mode ([R]andom, [W]inning, [L]osing) > "
    @ai_mode = gets.chomp.upcase 

  end
end 



