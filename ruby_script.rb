#!/usr/bin/env ruby
require './lib/rps_shoot.rb'

game = RPS.new()
puts "Player 1 Enter - Rock, Paper, or Scissors"
player1 = gets.chomp.downcase()
puts player1
puts "Player 2 Enter - Rock, Paper, or Scissors"
player2 = gets.chomp.downcase()
puts player2
player1winner = game.wins?(player1, player2)
if player1winner
  puts "Player 1 wins"
elsif player1winner == false
  puts "Player 2 wins"
else
  puts "TIED"
end
