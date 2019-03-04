

require_relative "spec_helper"

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
  # 1.  Expected Behavior
  # 2.  Edge cases
  it "creates a deck with 52 cards" do
    new_deck = Deck.new

    expect(new_deck).must_be_kind_of Deck
    expect(new_deck.cards.length).must_equal 52
  end
end
