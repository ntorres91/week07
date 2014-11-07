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
  ai = Ai.new
  ai_choice = ai.choose
    
      if player_choice == ai_choice
        puts "It's a Tie"
      elsif player_choice == "R" && ["S","P"].include?(ai_choice)
        puts "You Win, Rock beats #{ai_choice}"
      elsif (player_choice == "S" && ai_choice == "P")
        puts "You Win, Scissors beats #{ai_choice}"
      elsif (player_choice == "P" && ai_choice == ("S"))
        puts "You Lose, Paper loses to #{ai_choice}"
      elsif (player_choice == "P" && ai_choice == ("R"))
        puts "You Win, Paper beats #{ai_choice}"
      elsif (player_choice == "S" && ai_choice == "R")
        puts "You Lose, Scissors loses to #{ai_choice}"
      end
      puts ai_choice
      puts player_choice
  
  end
end

class Ai
  def choose
    options=[]
    "R"
  end 

end 




game = RockPaperScissors.new
game.play