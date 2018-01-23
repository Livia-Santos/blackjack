class Hand
  attr_accessor :dealt_cards

  def initialize()
    @dealt_cards = []
  end

  def add_card(card)
    @dealt_cards.push(card)
  end
end
