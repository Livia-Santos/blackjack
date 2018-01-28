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

  describe "dealing cards" do
    before do
      @blackjack.deal
      @dealer_cards = @blackjack.dealer_hand.dealt_cards
      @player_cards = @blackjack.player_hand.dealt_cards
    end

    it "retruns two cards for the dealer and the player" do
      expect(@dealer_cards.count).to eq(2)
      expect(@player_cards.count).to eq(2)
    end

    it "does not display the dealer firt card" do
      expect(@dealer_cards.first.show).to be false
    end

    it "ends the player's turn if he has a blackjack" do
      card1 = Card.new("Clubs", "10")
      card2 = Card.new("Hearts", "Ace")
      card3 = Card.new("Clubs", "3")

      card4 = Card.new("Diamonds", "10")
      card5 = Card.new("Diamonds", "King")
      card6 = Card.new("Hearts", "Queen")

      @blackjack = Blackjack.new(SUITS,RANKS)
      new_deck = [card4, card5, card2, card3, card1, card6]
      @blackjack.deck.replace_with(new_deck)
      @blackjack.deal
      expect(@blackjack.current_gamer).to eq("Dealer")

    end
  end

  describe "hitting a hand" do
    before do
      @blackjack.deal
      @dealer_cards = @blackjack.dealer_hand.dealt_cards
      @player_cards = @blackjack.player_hand.dealt_cards
    end
    it "can hit if playing is set to true" do
      expect(@blackjack.playing).to be true
    end

    it "returns 2 cards for dealer but after Hit, player will have 3 cards" do
      @blackjack.hit
      expect(@dealer_cards.count).to eq(2)
      expect(@player_cards.count).to eq(3)
    end
  end


end
