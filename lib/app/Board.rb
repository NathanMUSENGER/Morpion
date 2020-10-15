require_relative 'BoardCase'

class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :array_case

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @array_case = []
    @A1 = BoardCase.new("a1")
    @A2 = BoardCase.new('a2')
    @A3 = BoardCase.new('a3')
    @B1 = BoardCase.new('b1')
    @B2 = BoardCase.new('b2')
    @B3 = BoardCase.new('b3')
    @C1 = BoardCase.new('c1')
    @C2 = BoardCase.new('c2')
    @C3 = BoardCase.new('c3')

    @array_case = [@A1, @A2, @A3, @B1, @B2, @B3, @C1, @C2, @C3]
  end

  def play_turn(player)
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    puts "#{player.name}, quelle case souhaites tu jouer ?"
    played_value = gets.chomp
    #Vérifie que le joueur a bien entrer une bonne case
    turn_played = false 
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    
    while turn_played == false do

      if played_value == @A1.position && @A1.empty == true
        @A1.value = player.mark
        @A1.empty = false
        turn_played = true

      elsif played_value == @A2.position && @A2.empty == true
        @A2.value = player.mark
        turn_played = true
        @A2.empty = false
    
      elsif played_value == @A3.position && @A3.empty == true
        @A3.value = player.mark
        turn_played = true
        @A3.empty = false
    
      elsif played_value == @B1.position && @B1.empty == true
        @B1.value = player.mark
        turn_played = true
        @B1.empty = false

      elsif played_value == @B2.position && @B2.empty == true
        @B2.value = player.mark
        turn_played = true
        @B2.empty = false
    
      elsif played_value == @B3.position && @B3.empty == true
        @B3.value = player.mark
        turn_played = true
        @B3.empty = false
      
      elsif played_value == @C1.position && @C1.empty == true
        @C1.value = player.mark
        turn_played = true
        @C1.empty = false

      elsif played_value == @C2.position && @C2.empty == true
        @C2.value = player.mark
        turn_played = true
        @C2.empty = false 

      elsif played_value == @C3.position && @C3.empty == true
        @C3.value = player.mark
        turn_played = true
        @C3.empty = false
      
      else
        puts "Mauvais choix, réessaie"
        played_value = gets.chomp
      end
    end

  end


  def display_board
    # le tableau

    puts
    puts "#{@A1.value}|#{@B1.value}|#{@C1.value}"
    
    puts "#{@A2.value}|#{@B2.value}|#{@C2.value}"
    
    puts "#{@A3.value}|#{@B3.value}|#{@C3.value}"

   
    puts

     
end


def victory?(symbol)
    if [@A1.value, @B1.value, @C1.value] == [symbol, symbol, symbol] 
        return true
    elsif [@A1.value, @B1.value, @C1.value] == [symbol, symbol, symbol] 
        return true
    elsif [@A2.value, @B2.value, @C2.value] == [symbol, symbol, symbol] 
        return true
    elsif [@A3.value, @B3.value, @C3.value] == [symbol, symbol, symbol] 
        return true
    elsif [@A1.value, @A2.value, @A3.value] == [symbol, symbol, symbol] 
        return true
    elsif [@B1.value, @B2.value, @B3.value] == [symbol, symbol, symbol] 
        return true
    elsif [@C1.value, @C2.value, @C3.value] == [symbol, symbol, symbol] 
        return true
    elsif [@A1.value, @B2.value, @C3.value] == [symbol, symbol, symbol] 
        return true
    elsif [@C1.value, @B2.value, @A3.value] == [symbol, symbol, symbol] 
        return true
    else
        return false
    end
  end
end
