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
  sorted = [a, b, c].sort
  lengths_are_over_zero = sorted.any? {|e| e > 0}
  positive_area = sorted[0] + sorted[1] > sorted[2]
  unless lengths_are_over_zero && positive_area
    raise TriangleError
  else
    {0 => :scalene, 1 => :isosceles, 3 => :equilateral}[[a == b, a == c, b == c].count(true)]
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
