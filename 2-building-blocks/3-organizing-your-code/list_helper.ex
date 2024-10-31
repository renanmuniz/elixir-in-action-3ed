defmodule ListHelper do
  # soma de elementos da lista usando recursao
  def sum(list) do
    do_sum(0, list) #exported function. função publica para ser chamada do módulo
  end

  defp do_sum(current_sum, []) do
    current_sum #funcao privada que retorna o current_sum quando da o match de ter termiando a lista. Lista vazia [].
  end

  defp do_sum(current_sum, [head | tail]) do # Funcao privada que faz a soma enquanto a lista não é vazia, chamando ela mesmo passando a lista como tail
    IO.puts("current_sum = #{current_sum}")  #para ser na proxima iteração dividida como head e tail, somar o head, passar o tail e assim por diante.
    IO.inspect(head, charlists: :as_lists, label: "HEAD")
    IO.inspect(tail, charlists: :as_lists, label: "TAIL")
    new_sum = head + current_sum
    do_sum(new_sum, tail)
  end


  # contagem de elementos da lista usando recursao
  def len(list) do
    do_length(0, list)
  end

  defp do_length(current_size, []) do
    current_size
  end

  defp do_length(current_size, [_head | tail]) do
    size = current_size + 1
    do_length(size, tail)
  end


  # A range/2 function that takes two integers, from and to, and returns a list of all integer numbers in the given range.
  def range(n1,n2) do
    IO.inspect(do_range(n1,n2,[]), limit: :infinity)
  end

  defp do_range(n2, n2, list) do
    list = [n2 | list]
    Enum.sort(list)
  end

  defp do_range(n1,n2,list) do
    list = [n1 | list]
    do_range(n1+1,n2,list)
  end


  # A positive/1 function that takes a list and returns another list that contains only the positive numbers from the input list

  def positive(list) do
    do_filter_positives([], list)
  end

  defp do_filter_positives(positives, []) do
    positives
    |> Enum.filter(fn x -> x != nil end)
    |> Enum.sort()
  end

  defp do_filter_positives(positives, [head | tail]) do
    positives = [test(head) | positives]
    do_filter_positives(positives, tail)
  end

  defp test(x) when x >= 0 do
    x
  end

  defp test(x) when x < 0 do
    :nil
  end

end
