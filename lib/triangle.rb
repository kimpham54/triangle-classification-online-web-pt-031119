class Triangle
  # write code here
  attr_accessor :kind
  def initialize(side1,side2,side3)
    # if ((side1 == 0) | (side2 == 0) | (side3 == 0))
    #   begin
    #    raise TriangleError
    #  rescue TriangleError => error
    #      puts error.message
    #    end
    #  end
    if ((side1 == side2 && side2 == side3) && (side1 > 0 && side2 > 0 && side3 > 0))
      @kind = :equilateral
    elsif ((side1+side2 > side3) | (side2+side3 > side1) | (side1+side3 > side2) && (side1 == side2) | (side2 == side3) | (side1 == side3) && (side1 > 0 && side2 > 0 && side3 > 0))
      @kind = :isosceles
    elsif ((side1+side2 > side3) | (side2+side3 > side1) | (side1+side3 > side2) && (side1 > 0 && side2 > 0 && side3 > 0))
      @kind = :scalene
    else
      begin
       raise TriangleError
     rescue TriangleError => error
         puts error.message
       end
  end
end

  def kind()
    @kind
  end



  class TriangleError < StandardError
    def message
  "you must give the get_married method an argument of an instance of the person class!"
  end
end



end
