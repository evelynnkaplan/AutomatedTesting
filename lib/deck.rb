require_relative "card"

class Deck
  attr_reader :cards

  def initialize
    cards = []
    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        card = Card.new(value, suit)
        cards << card
      end
    end
    @cards = cards
  end

  def draw
    card = cards.pop
    return card
  end

  def shuffle
    return cards.shuffle!
  end

  def count
    return cards.length
  end
end
