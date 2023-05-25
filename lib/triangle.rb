class Triangle
  class TriangleError < StandardError; end

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    validate_triangle
  end

  def kind
    if @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end

  private

  def validate_triangle
    raise TriangleError if @sides.min <= 0 || @sides.sum - 2 * @sides.max <= 0
  end
end
