require_relative "frame"

class BowlingCalculator
  def initialize
    @balls         = []
    @frames        = [Frame.new(0, @balls)]       
  end

  def [](index)
    @frames[index-1].score
  end

  def <<(ball)
    @balls << ball

    if @balls.size.even?
      @frames << Frame.new(@balls.size, @balls)
    end
  end
end
