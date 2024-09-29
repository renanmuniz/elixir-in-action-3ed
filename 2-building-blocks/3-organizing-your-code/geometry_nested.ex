defmodule GeometryNested do
  
  defmodule Rectangle do
    def area(a,b) do
      a * b
    end

    def perimeter(a,b) do
      2 * (a + b)
    end
  end

  defmodule Square do
    def area(l) do
      l * l
    end

    def perimeter(l) do
      4 * l
    end
  end

end
