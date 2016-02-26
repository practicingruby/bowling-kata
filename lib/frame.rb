class Frame
  def initialize(index, balls)
    @index = index
    @balls = balls
  end

  def score
    first, second, third = @balls.slice(@index, 3)

    return nil unless second

    strike_or_spare = (first == 10 || first + second == 10)

    if strike_or_spare
      return nil unless third

      first + second + third
    else
      first + second
    end
  end

  def start_next_frame?
    ball1, ball2 = @balls.slice(@index, 2)
    ball1 == 10 || !ball2.nil?
  end
end
