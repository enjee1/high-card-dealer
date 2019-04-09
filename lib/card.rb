class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end


  def value
    if @rank == "J"
      11
    elsif @rank == "Q"
      12
    elsif @rank == "K"
      13
    elsif @rank == "A"
      14
    else
      @rank
    end
  end
end
