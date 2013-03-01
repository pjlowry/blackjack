class Player
  include Person
  attr_reader :name

  def initialize(name)
    @name = name
    @hand = []
  end

  def to_s
    "#{@name}"
  end
end