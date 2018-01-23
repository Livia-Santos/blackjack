require_relative "card"
require_relative "hand"

describe Hand do
  before do
    @hand = Hand.new
  end

  it "responds to dealt_cards" do
    expect(@hand).to respond_to(:dealt_cards)
  end

  describe "#add_card" do
    it "responds to add_card" do
      expect(@hand).to respond_to(:add_card)
    end
    it "returns the correct number of cards added" do

    end
  end

  describe "#get_value" do
    it "responds to get_value" do

    end
    it "returns correct value with no Ace" do

    end
    it "returns correct value with Ace and a Jack" do

    end
  end

  describe "Hand output" do
    it "returns the correct output if 'show' is true for all cards" do

    end
    it "returns the correct output if 'show' is false for one card" do

    end
  end

end
