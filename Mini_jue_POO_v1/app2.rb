require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'



player1 = Humanplayer.new("rickpie")
player2 = Player.new("Nydalind")
player3 = Player.new("Life")


binding.pry 