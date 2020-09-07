class Logic
  attr_reader :game

  def initialize(game)
    @game = game
  end

  def draw?
    return true if @game.any? Numeric
  end

  def winner?
    return true if 
       (@game[0] == @game[1] && @game[1] == @game[2]) ||
       (@game[3] == @game[4] && @game[4] == @game[5]) ||
       (@game[6] == @game[7] && @game[7] == @game[8]) ||
       (@game[0] == @game[4] && @game[4] == @game[8]) ||
       (@game[2] == @game[4] && @game[4] == @game[6]) ||
       (@game[0] == @game[3] && @game[3] == @game[6]) ||
       (@game[1] == @game[4] && @game[4] == @game[7]) ||
       (@game[2] == @game[5] && @game[5] == @game[8])
  end
end