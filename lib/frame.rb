class Frame
  def initialize(index, balls)
    @index = index
    @balls = balls
  end

  def score
    return nil unless @balls.size >= @index + 2

    first, second, third = @balls.slice(@index, 3)
    third = third.to_i
    
    case
    when first + second == 10
      bonus = @balls[@index+2]
      
      return nil unless bonus 

      first + second + bonus
    when first == 10 && second + third < 10
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
