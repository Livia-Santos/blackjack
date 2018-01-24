require_relative "card"
require_relative "hand"

hand = Hand.new
card1 = Card.new("Diamonds", "Jack")
card2 = Card.new("Clubs", "3")
card3 = Card.new("Clubs", "4")
card4 = Card.new("Diamonds", "Ace")

hand.add_card(card1)
hand.add_card(card2)
puts hand
puts "-" * 30

hand.add_card(card3)
puts hand
puts "-" * 30

hand.add_card(card4)
puts hand
