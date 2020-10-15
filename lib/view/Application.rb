
class Application
  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    
  
    puts "Bienvenue sur le jeu Morpion !"
    puts
    puts "Nous allons définir le premier joueur, quel est ton nom ?"
    puts
    player1_name = gets.chomp
    puts "Merci #{player1_name}, tu auras les X"
    puts
    puts "Nous allons définir le second joueur, quel est ton nom ?"
    puts
    player2_name = gets.chomp
    puts "Merci #{player2_name}, tu auras les O"
    
    game = Game.new(player1_name, player2_name)

    while game.status == "ongoing"  do
      game.turn
    end
 
    

  end

end