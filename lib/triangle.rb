class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene
  def initialize(side1,side2,side3)
  end

  def kind()
  end

end

class TriangleError < StandardError
end
