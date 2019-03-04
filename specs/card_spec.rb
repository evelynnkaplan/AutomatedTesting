
require_relative "spec_helper"

describe Card do
  describe "You can create a Card instance" do
    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      expect { Card.new(0, :diamonds) }.must_raise ArgumentError
      expect { Card.new(14, :diamonds) }.must_raise ArgumentError
      expect { Card.new(14, :clovers) }.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do
    it "to_s returns a readable String value logically for values 2-10" do
      diamonds_2 = Card.new(2, :diamonds)

      expect(diamonds_2.to_s).must_equal "2 of diamonds"
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      diamonds_queen = Card.new(12, :diamonds)

      expect(diamonds_queen.to_s).must_equal "Queen of diamonds"
    end
  end

  describe "Reader methods" do
    it "Can retrieve the value of the card using a `.value`." do
      diamonds_queen = Card.new(12, :diamonds)
    
      expect(diamonds_queen.value).must_equal 12
    end

    it "Can retrieve the value of the card using a `.suit`." do
      diamonds_queen = Card.new(12, :diamonds)

      expect(diamonds_queen.suit).must_equal :diamonds
    end
  end
  
end
