class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c

    validate!
  end

  def equilateral?
    (a == b) && (b == c)
  end

  def isosceles?
    ( (a == b) || (b == c) || (c == a) ) and not equilateral?

  end

  def scalene?
    (a != b) && (b != c)
  end

  def type
    if equilateral?
      :equilateral
    elsif isosceles?
      :isosceles
    else
      :scalene
    end
  end

  def validate!
    raise TriangleError.new("Sides must be greater than zero.") if a <= 0 || b <= 0 || c <= 0
    raise TriangleError.new("The sum of two sides is smaller than the third.") if (a+b<=c) || (b+c<=a) || (a+c<=b)
  end

end

TriangleError = Class.new(StandardError)
