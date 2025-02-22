defmodule GeometryAllForms do
  defmodule Rectangle do
    def area(a, b) do
      a * b
    end
  end

  defmodule Square do
    def area(a, b) do
      a * b
    end
  end

  defmodule Circle do
    def area(r) do
      3.141516 * (r * r)
    end
  end
end
