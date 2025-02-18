defmodule PipeOperatorExample do
  def sum(a, b) do
    a + b
  end

  def multi(a, b) do
    a * b
  end

  def divide(a, b) do
    a / b
  end

  def minus(a, b) do
    a - b
  end

  def all_functions(a) do
    a
    |> sum(2)
    |> multi(3)
    |> divide(2)
    |> minus(1)
  end
end
