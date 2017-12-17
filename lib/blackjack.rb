require_relative "card"
require_relative "deck"
require_relative "hand"
deck = Deck.new
deck.deal!(2)
player_hand = Hand.new(deck.dealt_cards)
puts "You were dealt #{deck.dealt_cards}, and your score is #{player_hand.score}, would you like to hit or stand? (h/s)?"
player_choice = gets.chomp.downcase
while player_choice == "h" && player_hand.score <= 21
  deck.deal!(1)
  player_hand.hand += (deck.dealt_cards)
  puts "You were dealt #{deck.dealt_cards} your score is #{player_hand.score}"
  puts "Would you like to hit or stand? (h/s)?"
  player_choice = gets.chomp.downcase
end

deck.deal!(2)
computer_hand = Hand.new(deck.dealt_cards)
while computer_hand.score <= 17
  deck.deal!(1)
  computer_hand.hand += (deck.dealt_cards)
end

  puts "computers score is #{computer_hand.score}, player score is #{player_hand.score}"
if computer_hand.score > 21
  puts "computer busted, player wins!"
elsif player_hand.score > 21
  puts "player busted, computer wins!"
elsif computer_hand.score >= player_hand.score
  puts "computer wins!"
elsif computer_hand.score < player_hand.score
  puts "player wins!"
end





# class Game
#
#   attr_accessor :player_hand, :computer_hand, :deck
#
#   def initialize
#     @deck = Deck.new
#   end
#
#   def self.start_game
#     @deck.deal!(2)
#     @player_hand.hand = Hand.new(deck.dealt_cards)
#     @deck.deal!(2)
#     @computer_hand.hand = Hand.new(deck.dealt_cards)
#   end
# end
#
#
# new_game = Game.new
# new_game.start_game
#
# require'pry'
# binding.pry
