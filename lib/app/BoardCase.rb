class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  attr_accessor :position, :value, :empty

  
  def initialize(position, value = nil )
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    @value = value
    @position = position
    @empty = true
  end
end