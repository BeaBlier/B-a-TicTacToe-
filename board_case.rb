require_relative 'board.rb'
require_relative 'game.rb'
require_relative 'player.rb'



class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)


  def initialize
    #TO DO doit régler sa valeur, ainsi que son numéro de case

    @value = " "

  end

  def to_s
    #TO DO : doit renvoyer la valeur au format string
    return @value
  end

end
