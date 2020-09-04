class Board
  attr_accessor :board

  def initialize(board)
    @board = board
  end

  def move_1
    move = gets.chomp.to_i - 1
    if @board[move].is_a? Numeric 
      @board[move] = 'X'
      return @board
    else 
      'Invalid move'
    end
  end

  def move_2
    move = gets.chomp.to_i - 1
    if @board[move].is_a? Numeric 
      @board[move] = 'O'
      return @board
    else 
      'Invalid move'
    end
  end
end

print move
