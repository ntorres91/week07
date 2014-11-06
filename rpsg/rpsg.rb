class RockPaperScissors

  GAME_RULES = {
    "R" => "Rock",
    "P" => "Paper",
    "S" => "Scissors"
  }

 def play
  puts "Welcome to Rock, Paper, Scissors"
  puts "What is your choice: Rock, Paper, or Scissors? "
  player_choice = gets.chomp.upcase 
  ai_choice = 
    
      if player_choice == ai_choice[0]
        puts "It's a Tie"
      elsif player_choice == "R" && ["S","P"].include?(ai_choice[0])
        puts "You Win, Rock beats #{ai_choice[1]}"
      elsif (player_choice == "S" && ai_choice[0] == "P")
        puts "You Win, Scissors beats #{ai_choice[1]}"
      elsif (player_choice == "P" && ai_choice[0] == ("S"))
        puts "You Lose, Paper loses to #{ai_choice[1]}"
      elsif (player_choice == "P" && ai_choice[0] == ("R"))
        puts "You Win, Paper beats #{ai_choice[1]}"
      elsif (player_choice == "S" && ai_choice[0] == "R")
        puts "You Lose, Scissors loses to #{ai_choice[1]}"
      end
      puts ai_choice[0]
      puts player_choice
  
  end
end


game = RockPaperScissors.new
game.play