class BowlingCalculator
  def initialize
    @balls = []
  end

  def [](index)
    return nil unless @balls.size.even?
    return nil if @balls.last(2).reduce(:+) == 10

    @balls.reduce(:+)
  end

  def <<(ball)
    @balls << ball
  end
end
