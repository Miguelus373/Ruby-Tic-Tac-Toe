#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/message.rb'
require_relative '../lib/logic.rb'
require 'colorize'

game = Board.new([1, 2, 3, 4, 5, 6, 7, 8, 9])
logic = Logic.new([1, 2, 3, 4, 5, 6, 7, 8, 9])
playing = true
turn = 1

draw_msg = Message.new("\nIt's a draw!\n")
invalid_msg = Message.new("\nInvalid move. Try again.\n")

while playing
  puts game.display.blue

  if logic.winner?
    print '*'.green * 40
    puts "\nPlayer #{turn == 1 ? 2 : 1} wins!".green
    print '*'.green * 40
    break
  end

  unless logic.draw?
    draw_msg.display { |i| print i.yellow }
    break
  end

  puts "\nPLAYER #{turn} It's your turn!"
  move = gets.to_i - 1

  if game.move(move, turn == 1 ? 'X' : 'O')
    logic.game[move] = turn == 1 ? 'X' : 'O'
    turn = (turn == 1 ? 2 : 1)
  else
    invalid_msg.display { |i| print i.red }
    next
  end
end
