require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'




puts "-------------------------------------------------"
puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
puts "|Le but du jeu est d'être le dernier survivant !|"
puts "-------------------------------------------------"


puts " Tu es la pour la bagarre ? alors déja, quel est ton nom ?"
print '> '
bagareur = gets.chomp
puts " Salut a toi #{bagareur}"

user = Humanplayer.new("#{bagareur}")

ennemy_array =[]
player1 = Player.new("Nydalind, Dresseur de Racoon en monocycle")
player2 = Player.new("Life, PDG de Fox-french-can-can France")
ennemy_array << player1
ennemy_array << player2


#LABAGARE
while user.life_points > 0 && (player1.life_points > 0 || player2.life_points > 0)
    puts user.show_state
    puts "-----------------------------------"
    puts "Quelle action veux-tu effectuer ?"
    puts "-----------------------------------"
    puts 
    puts "---------------------------------------------------------------------------------------"
    puts "a - Partir au quartier voir si y a pas une petite arme mieux que tes points en mousse"
    puts "s - chercher à se soigner, espece de gros fragile que tu es"
    puts "---------------------------------------------------------------------------------------"
    puts
    puts "---------------------------------------------" 
    puts "attaquer un trimard qui est en face de toi:"
    puts "---------------------------------------------"
    puts
    print "0 -" 
    if player1.life_points > 0
       puts player1.show_state
    else
       puts "#{player1.name} est parti rejoindre tonton johnny ⋌[∗✖ ω ✖∗]⋋" 
    end
    puts "------------------------------------------------------------"
    print "1 -" 
    if player2.life_points > 0
       puts player2.show_state
    else
       puts "#{player2.name} à passé l'arme a gauche, satané gauchiste bobo Parisien. (✖╭╮✖) " 
    end
    puts 
    print '> '
    choix = gets.chomp
    if
      choix == "a"
      puts user.search_weapon
      puts "-----------------------------------------------------------------"
    elsif 
      choix == "s"
      puts user.search_health_pack
      puts "-----------------------------------------------------------------"
    elsif 
      choix == "0"
      puts user.attacks(player1)
      puts "-----------------------------------------------------------------"
    else 
      choix == "1"
      puts user.attacks(player2) 
      puts "-----------------------------------------------------------------"
    end
    puts " SUPER ATTAQUE DES TRIMARDS  !"
    ennemy_array.each do |player|
        if user.life_points > 0
        then
        player.attacks(user)
        end
        puts  
        end 
    end
  if user.life_points > 0
    puts "la calotte de ses morts, tu les a marave"
  else
    puts "T'es vraiment mauvais, tu me dégoute" 
end