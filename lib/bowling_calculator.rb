class BowlingCalculator
  def initialize
    @balls = []
  end

  def score
    frame = @balls.reduce(0, :+)
    frame == 10 ? nil : frame
  end

  def <<(ball)
    @balls << ball
  end
end
