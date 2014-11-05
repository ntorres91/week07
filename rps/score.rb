class Score
  def initialize
    @outcomes = []
  end

  def record(outcome)
    @outcomes << outcome
  end 

  def percentage_of_wins
    (number_of_wins / number_of_rounds) * 100
  end

  private

  def number_of_wins
    @outcomes.count{ 'win'}.to_f
  end

  def number_of_rounds
    @outcomes.count
  end
end 

 