class Board
  attr_reader :board

  def initialize(board)
    #@board = [1,2,3,4,5,6,7,8,9]
    @board = board
  end


  def move(move, symbol)
  #  symbol = player1 ? 'X' : 'O'

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
  end

end
