require_relative "blackjack"

describe Blackjack do
  SUITS = ["Spades", "Hearts", "Clubs", "Diamonds"]
  RANKS = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]

  before do
    @blackjack = Blackjack.new(SUITS, RANKS)
  end
  describe "instance methods" do
    it "responds to player_hand" do
      expect(@blackjack).to respond_to(:player_hand)
    end

    it "responds to dealer_hand" do
      expect(@blackjack).to respond_to(:dealer_hand)
    end

    it "responds to current_gamer" do
      expect(@blackjack).to respond_to(:current_gamer)
    end

    it "responds to deck" do
      expect(@blackjack).to respond_to(:deck)
    end

    it "responds to deal" do
      expect(@blackjack).to respond_to(:deal)
    end

    it "responds to hit" do
      expect(@blackjack).to respond_to(:hit)
    end

    it "responds to stand" do
      expect(@blackjack).to respond_to(:stand)
    end

    it "responds to show_hands" do
      expect(@blackjack).to respond_to(:show_hands)
    end

    it "responds to set_results" do
      expect(@blackjack).to respond_to(:set_results)
    end
  end


end
