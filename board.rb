
require_relative 'board_case'
require 'pry'



class Board
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
  attr_accessor :table

  def initialize

   @table = []   # on met en place l'array qui est  l'attr_accessor de la classe @BoardCases = []

    @A = BoardCase.new    # on crée les 9 instances BoardCases
    @B = BoardCase.new
    @C = BoardCase.new
    @D = BoardCase.new
    @E = BoardCase.new
    @F = BoardCase.new
    @G = BoardCase.new
    @H = BoardCase.new
    @I = BoardCase.new

    @table = [@A, @B, @C, @D, @E, @F, @G, @H, @I]  # on insère les 9 cases dans l'array.
   end

  def to_s

# affichage du pattern
  puts "          0                  1                     2"
  puts      @table[0].to_s + "|" + @table[1].to_s + "|" + @table[2].to_s
  puts "4"+ @table[3].to_s + "|" + @table[4].to_s + "|" + @table[5].to_s + "6"
  puts      @table[6].to_s + "|" + @table[7].to_s + "|" + @table[8].to_s
  puts "          6                  7                     8"
  binding.pry
  end

  def play
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
  end

  def victory?
    # l'objectif est ici de déterminer toutes les combinaisons possibles pour gagner le jeu.
    # diagonal
	   if @table[0] == @table[5] && @table[5] == @table[8] && @table[0] != '.'   # même symboles dans chaque case et les cases ne doivent pas être vide
		    return @table[0]
	# antidiagonal
    elsif  @table[6] == @table[5] and @table[5] == @table[3] and @table[6] != '.'
		    return @table[6] #idem
		# row
		 if @table[0] == @table[1] and @table[1] == @table[2] and @table[0] != '.'
			  return board[0]  #idem
     if @table[3] == @table[4] and @table[4] == @table[5] and @table[3] != '.'   #idem
			  return board[3]
     if @table[6] == @table[7] and @table[7] == @table[8] and @table[6] != '.'   #idem
			  return board[6]
		# column
	   if @table[0] == @table[3] and @table[3] == @table[6] and @table[0] != '.'    #idem
			  return @table[0]
     if @table[1] == @table[4] and @table[4] == @table[7] and @table[1] != '.'    #idem
    		return @table[1]
     if @table[2] == @table[5] and @table[5] == @table[8] and @table[2] != '.'    #idem
			  return @table[2]
	      return None
    end

end

test = Board.new       
test.table
test.to_s
