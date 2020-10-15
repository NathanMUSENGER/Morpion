require 'pry'


class Board 

  attr_reader :array

  def initialize
    @array_case = []
    @a1 = BoardCase.new("a1")
    @a2 = BoardCase.new('a2')
    @a3 = BoardCase.new('a3')
    @b1 = BoardCase.new('b1')
    @b2 = BoardCase.new('b2')
    @b3 = BoardCase.new('b3')
    @c1 = BoardCase.new('c1')
    @c2 = BoardCase.new('c2')
    @c3 = BoardCase.new('c3')

    @array_case = [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]
  end
  
  def play_turn(player_name)
    puts "Joueur #{player_name}, sur quelle case veux-tu jouer?"
    player_choice = gets.chomp
      if (player_choice == @a1 || player_choice == @a2 || player_choice == @a3 || player_choice == @b1 || player_choice == @b2 || player_choice == @b3 || player_choice == @c1 || player_choice == @c2 || player_choice == @c3)
        if player_choice! == nill
        Board_case.value == player_value
      else 
      return "Cette case a déjà été jouée !"
  end

  def victory?(symbol)
  if [@a1, @b1, @c1] == [symbol, symbol, symbol] 
      return true
  elsif [@a1, @b1, @c1] == [symbol, symbol, symbol] 
      return true
  elsif [@a2, @b2, @c2] == [symbol, symbol, symbol] 
      return true
  elsif [@a3, @b3, @c3] == [symbol, symbol, symbol] 
      return true
  elsif [@a1, @a2, @a3] == [symbol, symbol, symbol] 
      return true
  elsif [@b1, @b2, @b3] == [symbol, symbol, symbol] 
      return true
  elsif [@c1, @c2, @c3] == [symbol, symbol, symbol] 
      return true
  elsif [@a1, @b2, @c3] == [symbol, symbol, symbol] 
      return true
  elsif [@c1, @b2, @a3] == [symbol, symbol, symbol] 
      return true
  else
  #*****************************************************A COMPLETER *************************************************
      return false && 
  end
end
  
  def display_board(board)
  
    puts " #{@a1} | #{@a2} | #{@a3} " 
    puts "-------------"
    puts " #{@b1} | #{@b2} | #{@b3} " 
    puts "-------------"
    puts " #{@c1} | #{@c2} | #{@c3} " 
  end

end


binding.pry

