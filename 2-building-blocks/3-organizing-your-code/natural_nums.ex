defmodule NaturalNums do
  def print(1) do
    IO.puts("Calling print(1)")
    IO.puts(1)
  end

  def print(n) do
    IO.puts("Calling print(#{n})")
    print(n - 1)
    IO.puts(n)
  end
end
