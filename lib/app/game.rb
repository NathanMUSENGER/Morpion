class Game

  attr_accessor :status
  attr_accessor :current_player
  attr_reader :array_players
  attr_accessor :board

  def initialize (player_name1,player_name2)
    @player1 = player_name1
    @player2 = player_name2
    @array_players << player1, player2
    @current_player = player1
    @status ="On going"
    @board = Board.new
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    @board.display_board
    @board.play_turn(current_player)
    victory = @board.victory?
    if victory = false 
      if @current_player = @player1
        @current_player = @player2
      else
        @current_player = @player1
      end
    puts "C'est maitenant à #{@current_player.name} de jouer"  
    if victory
      puts "Bravo ! #{@current_player.name} a gagné la partie"
    end
  end

end
