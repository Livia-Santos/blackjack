require_relative "deck"
require_relative "hand"

class Blackjack
  attr_reader :player_hand, :dealer_hand, :playing, :deck
  attr_accessor :current_gamer

  def initialize(suits, ranks)
    @player_hand = nil
    @dealer_hand = nil
    @deck = Deck.new(suits,ranks)
    @deck.shuffle
    @playing = false
    @current_gamer = ""
  end

  def deal
    unless playing
      @player_hand = Hand.new
      @dealer_hand = Hand.new

      2.times do
        dealer_hand.add_card(@deck.deal_card)
        player_hand.add_card(@deck.deal_card)
      end
    end
    dealer_hand.dealt_cards.first.show = false
    @playing = true
  end

  def hit
  end

  def stand
  end

  def show_hands
  end

  def set_results
  end


end
