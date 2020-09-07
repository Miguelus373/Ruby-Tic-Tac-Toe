class Board
  attr_reader :board

  def initialize(board)
    @board = board
  end

  def move(move, symbol)
    if (board[move].is_a? Numeric) && move >= 0 && move <= 9
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
end
