#!/usr/bin/env ruby
require('./lib/board.rb')

# Instructions on how to play the game

# A warning message if the player makes an invalid move
# An Ending message after the game ends, ask the player
#  if he wants to play again

board = Board.new([1,2,3,4,5,6,7,8,9])
playing = true
turn = 1

while playing
  puts board.display

  if board.winner?
    board.display
    playing = false
    return puts "Player #{turn == 1 ? 2 : 1} wins!"
  end

  unless board.board.any? Numeric
    playing = false
    return puts "It's a draw!"
  end

  if turn
    puts "PLAYER #{turn} ..It's your turn hommie!"
    player = gets.to_i - 1

    if player > -1 && player < 9 && (board.board[player].is_a? Numeric)
      board.move(player, turn == 1 ? 'X' : 'O')
      turn = (turn == 1 ? 2 : 1) 
    else
      puts 'Invalid move. Try again.'
      next
    end
  end
end
