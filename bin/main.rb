#!/usr/bin/env ruby
require('./lib/board.rb')
require 'colorize'

board = Board.new([1, 2, 3, 4, 5, 6, 7, 8, 9])
playing = true
turn = 1

while playing
  puts board.display.blue

  if board.winner?
    board.display
    playing = false
    40.times { print '*'.green }
    puts "\nPlayer #{turn == 1 ? 2 : 1} wins!".green
    40.times { print '*'.green }
    return
  end

  unless board.board.any? Numeric
    playing = false
    40.times { print '*'.yellow }
    puts "\nIt's a draw!".yellow
    40.times { print '*'.yellow }
    return
  end

  next unless turn

  puts "\nPLAYER #{turn} ..It's your turn!"
  player = gets.to_i - 1

  if player > -1 && player < 9 && (board.board[player].is_a? Numeric)
    board.move(player, turn == 1 ? 'X' : 'O')
    turn = (turn == 1 ? 2 : 1)
  else
    40.times { print '*'.red }
    puts "\nInvalid move. Try again.".red
    40.times { print '*'.red }
    next
  end
end
