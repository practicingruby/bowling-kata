class BowlingCalculator
  def initialize
    @balls = []
  end

  def score
    @balls.reduce(0, :+)
  end

  def <<(ball)
    @balls << ball
  end
end
