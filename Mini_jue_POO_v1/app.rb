require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'




player1 = Player.new("rickpie")
player2 = Player.new("Nydalind")


puts 
puts " Le premier combatant s'appelle #{player1.show_state}, défié aujourd'hui par #{player2.name} parce qu'il lui volé ses jouets !"
puts
puts " Le deuxime combatant ici s'appelle #{player2.show_state}, déçu d'avoir perdu son buzz l'éclair, il décide aujourd'hui d'affronter son bourreau"
puts 
puts " Le combat commence"
puts
puts
while player1.life_points > 0 && player2.life_points > 0
      player1.attacks(player2)
      if player1.life_points <= 0
      elsif player2.life_points <= 0
      break
      end
    player2.show_state
    puts
    player2.attacks(player1)
    puts
    player1.show_state
end

puts "il avait pas dit bonjour..."
