class Board
  attr_reader :board

  def initialize(board)
    @board = board
  end

  def move(move, symbol)
    if @board[move].is_a? Numeric 
      @board[move] = symbol
      return @board
    else
      return false
    end
  end

  def display
    " #{self.board[0]} | #{self.board[1]} | #{self.board[2]} \n --|---|-- \n #{self.board[3]} | #{self.board[4]} | #{self.board[5]} \n --|---|-- \n #{self.board[6]} | #{self.board[7]} | #{self.board[8]}"
  end

  def winner?
    case 
    when (@board[0] == @board[1] && @board[1] == @board[2]) ||
      (@board[3] == @board[4] && @board[4] == @board[5]) ||
      (@board[6] == @board[7] && @board[7] == @board[8])
      return true

    when (@board[0] == @board[4] && @board[4] == @board[8]) ||
      (@board[2] == @board[4] && @board[4] == @board[6])
      return true

    when (@board[0] == @board[3] && @board[3] == @board[6]) ||
      (@board[1] == @board[4] && @board[4] == @board[7]) ||
      (@board[2] == @board[5] && @board[5] == @board[8])
      return true
    end
  end
end
