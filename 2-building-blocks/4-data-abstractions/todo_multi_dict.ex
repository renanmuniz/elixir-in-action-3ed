defmodule MultiDict do
  def new(), do: %{}

  def add(dict, key, value) do
    Map.update(dict, key, [value], &[value | &1])
  end

#&[value | &1] é a mema coisa que: fn x -> [title | x] end  mas de uma forma simplificada.
#Explicando:
# & define uma função anonima
# se a chave já existir, adiciona value ao mapa: [value | &1]
# se a chave NAO existir, cria nova chave com o valor informado: [value]
# o &1 é o parâmetro informado, neste caso o mapa.

#Ex.:
#prepend_one = &[1 | &1] Fncao anonima que adiciona o valor 1 à lista.
#prepend_one.([2, 3, 4])  # Output: [1, 2, 3, 4]

  def get(dict, key) do
    Map.get(dict, key, [])
  end
end
