class Triangle
  # write code here
  def initialize(a,b,c)
    @a=a
    @b=b
    @c=c

  end

  def kind
   triangle = [@a, @b, @c].uniq
   if(@a>0 && @b>0 && @c>0) && ((@a+@b)> @c && (@b+@c)>@a && (@a+@c) > @b)
    if triangle.length == 1
      :equilateral
    elsif triangle.length == 2
      :isosceles
    else
      :scalene
    end
   else
    begin
      raise TriangleError
    end
   end
  end
  class TriangleError < StandardError
  end
end
