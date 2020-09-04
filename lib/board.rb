class Board
  attr_accessor :board

  def initialize(board)
    @board = board
  end

  def move(move, symbol)
    symbol = player1 ? 'X' : 'O'

    if @board[move].is_a? Numeric 
      @board[move] = symbol
      return @board
    else
      'Invalid move'
    end
  end

end
