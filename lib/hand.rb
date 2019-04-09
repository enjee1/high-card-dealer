require_relative "card"

class Hand

  def initialize(dealt_cards = [])
    @cards = dealt_cards
  end

  def value
    sum_of_cards = 0
    @cards.each do |card|
      sum_of_cards += card.value
    end
    sum_of_cards
  end

  def display_hand
    playing_cards = ""
    @cards.each do |card|
      playing_cards += "#{card.rank}#{card.suit} "
    end
    playing_cards
  end
end
