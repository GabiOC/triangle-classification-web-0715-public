class Triangle
  # write code here
  # class TriangleError < StandardError
  #   attr_reader :object

  #   def initialize(triangl)
  #     @triangle = triangle
  #   end
  # end

  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
    raise TriangleError if x == 0 && y == 0 && z == 0
    raise TriangleError if x < 0 || y < 0 || z < 0
    raise TriangleError if ((x + y) <= z) || ((x + z) <= y) || ((y + z) <= x)
  end

  def kind
    if @x == @y && @x == @z
      :equilateral
    elsif @x == @y || @x == @z || @y == @z
      :isosceles
    elsif @x != @y && @x != @z && @y != @z
      :scalene
    end
  end
end


class TriangleError < Exception
  puts "This is an illegal triangle"
end