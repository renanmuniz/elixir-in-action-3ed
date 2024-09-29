defmodule Salario do

  def salario_liquido(valor) do
    IO.puts("Salário líquido é R$#{calcular_salario_liquido(valor)}")
  end

  defp calcular_salario_liquido(valor) do
    valor - (valor * 0.25)
  end

end
