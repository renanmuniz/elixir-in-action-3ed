defmodule GeometryTest do
  alias GeometryAllForms.Rectangle, as: Rectangle
  alias GeometryAllForms.Square, as: Square
  alias GeometryAllForms.Circle, as: Circle

  def my_function() do
    IO.puts(Rectangle.area(4, 5))
    IO.puts(Square.area(4, 5))
    IO.puts(Circle.area(4))
  end
end
