#!/usr/bin/env ruby
require('./lib/board.rb')
# What we need to display for the player:

# Instructions on how to play the game

def display(board, player)
  puts "Instructions here"
  puts "\nPlayer's turn here"
  puts board.display
  board.move(gets.chomp.to_i - 1, player)
end

# The 3 by 3 grid Board:
# 1 | 2 | 3
# - | - | -
# 4 | 5 | 6   Representation of the board
# - | - | -
# 7 | 8 | 9

# Which player should make a move
# Fill the board accordingly with the players' move
# A warning message if the player makes an invalid move
# A winning or draw message when the game is over
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

# How to win:
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

# How to end the game:
# One of the player win
#  Display (Winner, Winner, Chicken Dinner!!)
# Current player can't make a move
#  Display a draw message (It's a draw)
#
# Display a message ask the players if they want to play again (Y/N)

board = Board.new([1,2,3,4,5,6,7,8,9])

(1..10).each do |i|
  player = (i % 2).zero? ? 'O' : 'X'
  display(board, player)
end