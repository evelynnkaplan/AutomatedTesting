
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    unless value > 0 && value < 14
      raise ArgumentError, "Value must be between 1 and 13."
    end
    @value = value

    unless [:hearts, :spades, :clubs, :diamonds].include?(suit)
      raise ArgumentError, "Invalid suit, please input a valid suit."
    end
    @suit = suit
  end

  def to_s
    return "#{value} of #{suit.to_s}"
  end
end
