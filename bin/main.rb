#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/message.rb'
require 'colorize'

game = Board.new([1, 2, 3, 4, 5, 6, 7, 8, 9])
playing = true
turn = 1

draw_msg = Message.new("\nIt's a draw!\n")
invalid_msg = Message.new("\nInvalid move. Try again.\n")

while playing
  puts game.display.blue

  if game.winner?
    playing = false
    40.times { print '*'.green }
    puts "\nPlayer #{turn == 1 ? 2 : 1} wins!".green
    40.times { print '*'.green }
    return
  end

  unless game.board.any? Numeric
    playing = false
    draw_msg.display { |i| print i.yellow }
    return
  end

  next unless turn

  puts "\nPLAYER #{turn} It's your turn!"
  player = gets.to_i - 1

  if player > -1 && player < 9 && (game.board[player].is_a? Numeric)
    game.move(player, turn == 1 ? 'X' : 'O')
    turn = (turn == 1 ? 2 : 1)
  else
    invalid_msg.display { |i| print i.red }
    next
  end
end
