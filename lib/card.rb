
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    unless value > 0 && value < 14
      raise ArgumentError, "Invalid value, input a number between 1 and 13."
    end
    @value = value

    unless [:hearts, :spades, :clubs, :diamonds].include?(suit)
      raise ArgumentError, "Invalid suit, please input a valid suit."
    end
    @suit = suit
  end

  def to_s
    case value
    when 1
      return "Ace of #{suit.to_s}"
    when 11
      return "Jack of #{suit.to_s}"
    when 12
      return "Queen of #{suit.to_s}"
    when 13
      return "King of #{suit.to_s}"
    else
      return "#{value} of #{suit.to_s}"
    end
  end
end
