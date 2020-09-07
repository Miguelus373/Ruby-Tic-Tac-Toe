# rubocop:disable Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity
class Board
  attr_reader :board

  def initialize(board)
    @board = board
  end

  def move(move, symbol)
    if @board[move].is_a? Numeric
      @board[move] = symbol
      @board
    else
      false
    end
  end

  def display
    "\n  #{board[0]} | #{board[1]} | #{board[2]}
  --|---|--
  #{board[3]} | #{board[4]} | #{board[5]}
  --|---|--
  #{board[6]} | #{board[7]} | #{board[8]}"
  end

  def winner?
    if (@board[0] == @board[1] && @board[1] == @board[2]) ||
       (@board[3] == @board[4] && @board[4] == @board[5]) ||
       (@board[6] == @board[7] && @board[7] == @board[8]) ||
       (@board[0] == @board[4] && @board[4] == @board[8]) ||
       (@board[2] == @board[4] && @board[4] == @board[6]) ||
       (@board[0] == @board[3] && @board[3] == @board[6]) ||
       (@board[1] == @board[4] && @board[4] == @board[7]) ||
       (@board[2] == @board[5] && @board[5] == @board[8])
      true
    end
  end
end

# rubocop:enable Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity
