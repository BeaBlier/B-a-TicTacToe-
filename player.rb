require_relative 'board_case.rb'
require_relative 'board.rb'
require_relative 'game.rb'

class Player

  attr_accessor :name, :value
  attr_writer :statement

  def initialize
    ####################################### nom
    puts "What is your name ?"
    @name= gets.chomp
    ###################################### valeur
    puts "Which symbols do you want betwen X and O?"
    @value= gets.chomp
    ###################################### état de victoire
    @statement= false
  end
end

player1 = Player.new     # on assigne l'instance de classe Player à la variable player1    Var = Class.new
puts player1
puts player1.name        # afficher le nom du Player 1                                     Var.attribut
puts player1.value       # afficher le symbole choisi par le Player 1
player2=Player.new       # on assigne l'instance de classe Player à la variable player2
puts player2
puts player2.name        # afficher le nom du player 2
puts player2.value       # affichier le symbole choisi par le player 2
