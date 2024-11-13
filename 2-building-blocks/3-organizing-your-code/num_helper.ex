defmodule NumHelper do
  def sum_nums(list) do
    Enum.reduce(list, 0, &add_num/2)
  end

  defp add_num(num, sum) when is_number(num), do: sum + num

  defp add_num(_, sum), do: sum

  def multiply_nums(list) do
    Enum.reduce(list, 1, &multiply_num/2)
  end

  defp multiply_num(num, result) when is_number(num), do: num * result

  defp multiply_num(_, result), do: result
end
