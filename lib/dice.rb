class Dice

  def roll
    return (rand(5) + 1)
  end

  def roller(num)
    output = []
    num.times {output << Dice.new.roll}
    output
  end
end
