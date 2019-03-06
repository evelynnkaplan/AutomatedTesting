

require_relative "spec_helper"

describe Deck do
  it "creates a deck with 52 cards" do
    new_deck = Deck.new

    expect(new_deck).must_be_kind_of Deck
    expect(new_deck.cards.length).must_equal 52
  end

  it "draw returns a card" do
    new_deck = Deck.new

    expect(new_deck.draw).must_be_kind_of Card
  end

  it "reader methods can be called on drawn card" do
    new_deck = Deck.new

    drawn_card = new_deck.draw
    suits = [:hearts, :spades, :clubs, :diamonds]
    values = (1..13)
    expect(suits).must_include drawn_card.suit
    expect(values).must_include drawn_card.value
  end

  it "draw eliminates a card from the deck" do
    new_deck = Deck.new

    new_deck.draw

    expect(new_deck.cards.length).must_equal 51
  end

  it "shuffles the deck" do
    new_deck = Deck.new

    new_deck.shuffle

    expect(new_deck.cards).must_be_kind_of Array
  end

  it "counts the cards" do
    new_deck = Deck.new

    new_deck.draw
    new_deck.draw
    new_deck.draw

    expect(new_deck.count).must_equal 49
  end

  it "count method returns 0 if all cards are drawm from the deck" do
    new_deck = Deck.new

    52.times do
      new_deck.draw
    end

    expect(new_deck.count).must_equal 0
  end

  it "won't draw into negative cards" do
    new_deck = Deck.new

    75.times do
      new_deck.draw
    end

    expect(new_deck.count).must_equal 0
  end
end
