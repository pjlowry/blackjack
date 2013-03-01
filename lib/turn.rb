class Turn
  attr_reader :player, :dealer

  def initialize(player, dealer)
    @player = player
    @dealer = dealer
    @hand = []
  end

  def over?
    false
  end

  def winner?
    if dealer.hand_value > 21 
      true
    elsif player.hand_value == 21
      true
    elsif player.hand_value > dealer.hand_value
      true
    else
      false
    end
  end

  def blackjack?
    if player.hand_value == 21 && dealer.hand_value == 21
      false
    elsif player.hand_value == 21 || dealer.hand_value == 21
      true
    else
      false
    end
  end

  def bust?
    player.hand_value > 21 || dealer.hand_value > 21  
  end

  def push?
    if player.hand_value != 0 && player.hand_value == dealer.hand_value
      true
    else
      false
    end
  end
end