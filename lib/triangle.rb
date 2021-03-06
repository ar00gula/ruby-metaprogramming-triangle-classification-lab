require 'pry'

class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end


  def kind
    if @side1 == 0 || @side2 == 0 || @side3 == 0
        raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3
      return :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      if  @side1+@side2 <= @side3 || @side2+@side3 <= @side1 || @side3+@side1 <= @side2
        raise TriangleError
      elsif @side1 == @side3 && @side1 != @side2
        return :isosceles
      elsif @side1 == @side2 && @side2 !=@side3
        return :isosceles
      elsif @side2 == @side3 && @side2 != @side1
        return :isosceles
      end

    elsif @side1 != @side2 && @side2 != @side3
      if  @side1+@side2 <= @side3 || @side2+@side3 <= @side1 || @side3+@side1 <= @side2
          raise TriangleError
      else
        return :scalene
      end
    end
  end


  class TriangleError < StandardError
    def message
        puts "This triangle is invalid!"
    end
  end


end




# class PartnerError < StandardError
#   def message
#     "you must give the get_married method an argument of an instance of the person class!"
#   end
# end