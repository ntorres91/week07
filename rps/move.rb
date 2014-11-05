class Move
 


  NAMES={
    "R" => "Rock",
    "P" => "Paper",
    "S" => "Scissors"
  }

  OUTCOMES={
    %w{R R} => :tie,
    %w{R P} => :loss,
    %w{R S} => :win,
    %w{P P} => :tie,
    %w{P S} => :loss,
    %w{P R} => :win, 
    %w{S S} => :tie,
    %w{S R} => :loss,
    %w{S P} => :win 
  }

attr_reader :label 

  def initialize(label)
    @label = label
  end 

  def name 
    NAMES[@label]


  def outcome(move)
    OUTCOMES[[@label, move.label]]
  end

  def to_s
    name
  end
end





