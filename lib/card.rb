class Card


FACE_VALUE = {'2' => 2,  '3' =>  3, '4' =>  4, '5' =>  5, '6' =>  6, '7' => 7, 
              '8' => 8, '9' => 9, '10' => 10, 'J' => 10, 'Q' => 10, 'K' => 10, 'A' => 11}

 
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    

  end

  def to_s
    @rank + " of " + @suit
  end

  def value

    FACE_VALUE[@rank].to_i

  end
end
