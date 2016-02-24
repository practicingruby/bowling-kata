class Frame
  def initialize(index, balls)
    @index = index
    @balls = balls
  end

  def score
    return nil unless @balls.size >= @index + 2

    first, second = @balls.slice(@index, 2)
    
    case
    when first + second == 10
      bonus = @balls[@index+2]
      
      return nil unless bonus 

      first + second + bonus
    else
      first + second
    end
  end
end