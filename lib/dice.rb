class Dice

  def initialize
    @rolls = []
  end

  def roll
    return (rand(5) + 1)
  end

  def roller(num)
    @rolls = []
    num.times {@rolls << Dice.new.roll}
    @rolls
  end

  def total
    n = 0
    @rolls.each do |roll|
      n += roll
    end
    n
  end
end
