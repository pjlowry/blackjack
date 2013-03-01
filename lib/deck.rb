class Deck
  attr_reader :full_deck

  def initialize
    @rank = %w{A 2 3 4 5 6 7 8 9 10 J Q K}
    @suit = %w{Spades Hearts Diamonds Clubs}

    # @full_deck = @rank.product(@suit)
    # @new_deck = @full_deck.each { |x| p x.join(" of ")}

    @full_deck = []
    ranks = ['A','2','3','4','5','6','7','8','9','10','J','Q','K']
    suits = ['Hearts', 'Clubs', 'Spades', 'Diamonds']
     suits.each do |suit|
      ranks.each do |rank|
        @full_deck << Card.new(rank, suit) 
        @full_deck.shuffle! 
      end
    end
  end

  def deal(player)
    player.receive_cards(@full_deck.pop(2))
  end

  def hit(player)
    player.receive_cards(@full_deck.pop(1))
  end

  def to_s
    @full_deck
  end
end

