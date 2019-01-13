require 'pry'

class Triangle

  attr_accessor :x, :y, :z

  def initialize(x,y,z)
    @x = x
    @y = y
    @z = z
  end

  def valid?
    @x > 0 && @y > 0 && @z >0
  end

  def inequality?
    @x+@y > @z && @x+@z > @y && @y+@z > @x
  end

  def kind
    if valid? && inequality?
      if @x == @y && @x == @z
        :equilateral
      elsif @x == @y || @y == @z || @z == @x
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError.new
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end


end

# binding.pry

# To make a custom exception, just create a new class that inherits from StandardError.
# ex) class CustomError < StandardError
#     end
#     raise CustomError.new()
