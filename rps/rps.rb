class RPS
  PLAYER_WIN ="Player wins"
  AI_WIN ="AI wins"
  TIE_GAME = "TIE"

  OUTCOMES={
    %w{R R} => "TIE_GAME"
    %w{R P} => "AI_WIN",
    %w{R S} => "PLAYER_WIN",
    %w{P P} => "TIE_GAME",
    %w{P S} => "AI_WIN",
    %w{P R} => "PLAYER_WIN",
    %w{S S} => "TIE_GAME",
    %w{S R} => "AI_WIN",
    %w{S P} => "PLAYER_WIN"
  }

  def play
    player movie = get_player_input 
    until player_move == 'q'
      ai_move = ["R","P","S"].sample 
      puts "AI played #{ai_move}"
      puts OUTCOMES[[player_move, ai_move]]
      player_move = get_player_input
    end
  end 

  def get_player_input
    print "Your move? (R/P/S, q to quit) > "
    gets.chomp
  end 
end 


