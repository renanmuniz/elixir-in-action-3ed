defmodule TupleReturnTest do
  def returnsATuple(number) do
    if rem(number, 2) == 0 do
      {:ok, number}
    else
      {:error, number}
    end
  end
end
