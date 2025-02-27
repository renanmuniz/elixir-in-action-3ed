defmodule MapsTest do
  def getMapsValue1(key) do
    my_map = %{a: 1, b: 2, c: 3}

    value =
      case Map.fetch(my_map, key) do
        {:ok, v} -> "Value: #{v}"
        :error -> "Key not found: #{key}"
      end

    IO.puts(value)
  end

  def getMapsValue2(key) do
    my_map = %{a: 1, b: 2, c: 3}

    try do
      value = Map.fetch!(my_map, key)
      IO.puts("Value: #{value}")
    rescue
      e in KeyError -> IO.puts("Key not found: #{e.key}")
    end
  end

  def getMapsValue3(key) do
    my_map = %{a: 1, b: 2, c: 3}
    value = Map.get(my_map, key, -1)
    IO.puts("Value: #{value}")
  end
end
