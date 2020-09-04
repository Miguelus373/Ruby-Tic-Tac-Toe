#!/usr/bin/env ruby
require('./lib/board.rb')

# Instructions on how to play the game

# A warning message if the player makes an invalid move
# An Ending message after the game ends, ask the player
#  if he wants to play again

# Input from players:
# Ask player 1 to select an empty place (1-9) to make
#   his move then add an X in that place (if empty)
# Ask player 2 to select an empty place (1-9) to make
#   his move then add an O in that place (if empty)

# Valid Moves:
# if the players selects a place not taken puts his symbol in this place.
# if the players selects a taken place returns the warning message.

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

  if turn == 1
    puts "PLAYER #{turn} ..It's your turn hommie!"
    player = gets.to_i - 1
    if board.board[player].is_a? Numeric
      board.move(player, "X")
      turn += 1
    else
      puts 'Invalid move. Try again.'
      next
    end
  else
    puts "PLAYER 2 ..It's your turn hommie!"
    player = gets.to_i - 1 
    if board.board[player].is_a? Numeric
      board.move(player, "O")
      turn -= 1
    else
      puts 'Invalid move. Try again.'
      next
    end
  end
end