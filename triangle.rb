# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  for side in [a, b, c]
    if side <= 0 || b <= 0 || c <= 0
      raise TriangleError
    end
  end
  if a + b <= c || a + c <= b || b + c <= a
    raise TriangleError
  end

  count = 0
  count += 1 if a == b
  count += 1 if a == c
  count += 1 if b == c
  case count
  when 0
    :scalene
  when 1
    :isosceles
  when 2..3
    :equilateral
  else
    raise TriangleError
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
