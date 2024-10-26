defmodule Geometry do
  def rectangle_area(a, b) do
    a * b
  end

  def square_area(l) do
    l * l
  end

  # multi-clause funtions.
  # "sobrecarga de metodos"
  def area({:rectangle, a, b}) do
    a * b
  end

  def area({:square, a}) do
    a * a
  end

  def area({:circle, r}) do
    r * r * 3.14
  end

  def area(unknown) do
    {:error, {:unknown_shape, unknown}}
  end
end
