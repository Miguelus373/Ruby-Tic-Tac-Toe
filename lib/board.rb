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
      puts 'Winner'
      return true

    when (@board[0] == @board[4] && @board[4] == @board[8]) ||
      (@board[2] == @board[4] && @board[4] == @board[6])
      puts 'Winner'
      return true

    when (@board[0] == @board[3] && @board[3] == @board[6]) ||
      (@board[1] == @board[4] && @board[4] == @board[7]) ||
      (@board[2] == @board[5] && @board[5] == @board[8])
      puts 'Winner'
      return true
    end
  end
end


# Any row has the same symbol on its 3 spaces:
# 1,2,3 Horizontal Top
# 4,5,6 Horizontal middle
# 7,8,9 Horizontal bottom

# Any column has the same symbol on its 3 spaces:
# 1,4,7 Vertical left
# 2,5,8 Vertical center
# 3,6,9 Vertical right

# Any diagonal has the same symbol on its 3 spaces:
# 1,5,9 Diagonal Left
# 3,5,7 Diagonal right


