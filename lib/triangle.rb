

class Triangle

  def initialize (l1,l2,l3)
    @max = [l1,l2,l3].max
    @min = [l1,l2,l3].min
    if ([l1,l2,l3] - [@max,@min])[0]
      @med = ([l1,l2,l3] - [@max,@min])[0]
    elsif [l1,l2,l3].count(@max) > 1
      @med = @max
    else
      @med = @min
    end
  end

  def kind
    if @min<=0 or @med+@min <= @max
      raise TriangleError
    elsif @min == @med && @med == @max
      :equilateral
    elsif @min == @med or @med == @max
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
  end

end
