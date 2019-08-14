require './lib/my_array'
require './lib/cell'
require './lib/player'
require './lib/game'
require './lib/board'

puts "Welcome to tic tac toe"
chubi = Player.new({choice: "X", name: "chubi"})
danilo = Player.new({choice: "O", name: "danilo"})
players = [chubi, danilo]
Game.new(players).play