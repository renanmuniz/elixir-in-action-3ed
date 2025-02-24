defmodule GeometryAllForms do
  @moduledoc "Módulo com submodulos para calculo de area de formas geometricas"

  defmodule Rectangle do
    @moduledoc "Modulo com funcoes para a forma geometrica Rectangle"

    @doc "Calcula a area do retangulo"
    def area(a, b) do
      a * b
    end
  end

  defmodule Square do
    @moduledoc "Modulo com funcoes para a forma geometrica Square"

    @doc "Calcula a area do quadrado"
    def area(a, b) do
      a * b
    end
  end

  defmodule Circle do
    @moduledoc "Modulo com funcoes para a forma geometrica Circle"
    @pi 3.14159

    @doc "Calcula a area do circulo"
    def area(r) do
      @pi * (r * r)
    end
  end
end
