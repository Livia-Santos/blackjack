class Hand
  VALUES = {
    "2": 2,
    "3": 3,
    "4": 4,
    "5": 5,
    "6": 6,
    "7": 7,
    "8": 8,
    "9": 9,
    "10": 10,
    "Queen": 10,
    "Jack": 10,
    "King": 10,
    "Ace": 1
  }
  attr_accessor :dealt_cards

  def initialize()
    @dealt_cards = []
  end

  def add_card(card)
    @dealt_cards.push(card)
  end

  def get_value
    card_ranks = dealt_cards.collect{|card| card.rank}
    value = card_ranks.reduce(0){|acc, rank| acc + VALUES[rank.to_sym]}
    if card_ranks.include?("Ace")
      value += 10 if value + 10 <= 21
    end
    value
  end

end
