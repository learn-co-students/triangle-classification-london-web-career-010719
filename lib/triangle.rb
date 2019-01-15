require 'pry'
class Triangle
  attr_accessor :side_a, :side_b, :side_c
  def initialize (side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  class TriangleError < StandardError
    "Triangle is no good mate."
  end

  def valid_sides?
    !(side_a <= 0 || side_b <= 0 || side_c <= 0)
  end

  def valid_shape?
    !((side_a + side_b) <= side_c || (side_b + side_c) <= side_a || (side_a + side_c) <= side_b)
  end

  def valid?
    valid_shape? && valid_sides?
  end

  def kind
    raise TriangleError  if !valid?

    if side_a == side_b && side_a == side_c
      return :equilateral
    elsif side_a == side_b || side_a == side_c || side_b == side_c
      return :isosceles
    else
      return :scalene
    end
  end
end
