require 'pry'

require_relative "lib/deck"
require_relative "lib/hand"

deck = Deck.new
puts "There are #{deck.num_cards} cards in the deck."

player_one_hand = Hand.new(deck.deal)
puts "Player 1 was dealt #{player_one_hand.display_hand}"
player_two_hand = Hand.new(deck.deal)
puts "Player 2 was dealt #{player_two_hand.display_hand}"

puts "Player 1's hand value: #{player_one_hand.value}"
puts "Player 2's hand value: #{player_two_hand.value}"

if player_one_hand.value > player_two_hand.value
  puts "Player 1 wins the game!"
elsif player_one_hand.value < player_two_hand.value
  puts "Player 2 wins the game!"
else
  puts "The game is a tie!"
end
