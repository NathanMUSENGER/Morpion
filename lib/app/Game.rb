require_relative 'Player'
require_relative 'Board'


class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :board, :current_player, :status

  def initialize(name_player1, name_player2)
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    @player1 = Player.new(name_player1, "X")
    @player2 = Player.new(name_player2, "O")
    @players = [@player1, @player2]
    @current_player = @player1
    @status = "ongoing"
    @board = Board.new
    @rounds_counter = 0 
  
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    @board.display_board
    @board.play_turn(current_player)
    victory = @board.victory?(@current_player.mark)
    if victory == false
          @rounds_counter +=1 
      if @current_player == @player1
        @current_player = @player2
      else
        @current_player = @player1
      end
      puts
      puts "C'est maitenant à #{@current_player.name} de jouer"  
      puts
      puts @rounds_counter
      if @rounds_counter == 9
          puts "MATCH NUL !"
          @status = "end"
      else
      end

  
    else victory == true
     game_end
    end
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end


  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul   
    puts "Bravo ! #{@current_player.name} a gagné la partie"
    @status = "end"
  end    

end