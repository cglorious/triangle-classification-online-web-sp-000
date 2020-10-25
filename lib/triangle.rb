class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a == b && a == c && a.positive?
      :equilateral
    elsif a == b && a != c || a == c && a != b || b == c && b != a
      :isosceles
    elsif a != b && b!=c #positive
      :scalene
    elsif a == 0 || b == 0 || c == 0 #positive
      raise TriangleError
    elsif a.negative?|| b.negative? || c.negative?
      #begin
        raise TriangleError
      #rescue TriangleError
      #end
    else (a + b) < c || (a + c) < b || (a + c) < b
      #begin
        raise TriangleError
      #rescue TriangleError
      #end
    end
  end

  class TriangleError < StandardError
    #def message
    #  "This is not a triangle."
    #end
  end

end
