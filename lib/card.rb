class Card
 
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    @rank + " of " + @suit
  end

  def value
    if @rank == 'K' || @rank == 'Q' || @rank == 'J' 
      10
    elsif @rank == 'A'
      11      
    else
      @rank.to_i
       
    end
  end
end
