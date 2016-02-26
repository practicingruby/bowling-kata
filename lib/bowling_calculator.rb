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
    
    if @frames.last.start_next_frame?
      @frames << Frame.new(@balls.size, @balls)
    end
  end
end
