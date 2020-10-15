def initialize_players
  puts "Quel est le prénom de 1er joueur ?"
    player_name1 = gets.chomp
    player1 = User.new(player_name1)
    puts "Chosissez votre camp :"
    puts "X ?, Press X"
    puts "O?, Press O"
  puts "Quel est le prénom de 2ème joueur ?"  
    player_name2 = gets.chomp
    player2 = User.new(player_name2)    
end
