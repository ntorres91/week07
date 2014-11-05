module AI
  class Losing 
    attr_reader :move

  def initialize(move)
    @move = move
  end

    def label 
      possible_outcomes.find { |key, _| key[0] == move.label}.first[1]
    end

    private

    def possible_outcomes
      Move::OUTCOMES.select { |_, value| value == :win } 
  end
end 


