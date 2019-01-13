class Triangle
  # write code here

attr_accessor :side1, :side2, :side3

    def initialize(side1, side2, side3)
      @side1 = side1
      @side2 = side2
      @side3 = side3

    end

  def triangle_valid?
      @side1 > 0 && @side2 > 0 && @side3 > 0
  end

  def triangle_inequality?
      @side1 + @side2 > @side3 &&  @side2 + @side3 > @side1 &&  @side1 + @side3 > @side2
  end


  def kind

      if triangle_valid? && triangle_inequality?
            if @side1==@side2 && @side2 == @side3 && @side1==@side3
              return :equilateral
            elsif
              @side1==@side2 || @side2==@side3 || @side1==@side3
              return :isosceles
            else
                return :scalene
            end
      else
        raise TriangleError.new
      end

  end

    class TriangleError < StandardError

    end

end
