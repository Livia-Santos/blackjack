require_relative "card"

describe Card do
  before do
    suit = "Diamonds"
    rank = "8"

    @card = Card.new(suit,rank)
  end

  it "responds to suit" do
    expect(@card).to respond_to(:suit)
  end

  it "responds to rank" do
    expect(@card).to respond_to(:rank)
  end

  it "responds to show" do
    expect(@card).to respond_to(:show)
  end


end
