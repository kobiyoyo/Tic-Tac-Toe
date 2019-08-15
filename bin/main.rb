require_relative "./lib/my_array"
require_relative "./lib/cell"
require_relative "./lib/player"
require_relative "./lib/board"
require_relative "./lib/game"

puts "Welcome to tic tac toe"
chubi = Player.new({ choice: "X", name: "chubi" })
danilo = Player.new({ choice: "O", name: "danilo" })
players = [chubi, danilo]
Game.new(players).play
