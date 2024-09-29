defmodule CreditCard do
  defmodule Calculations do
      defmodule Tax do
        def calculate do
          IO.puts("Calculating tax!")
        end
      end

      defmodule Interests do
        def calculate() do
          IO.puts("Calculating Interests!")
        end

        def set() do
          IO.puts("Setting Interests!")
        end

        def update() do
          IO.puts("Updating Interests!")
        end
      end
  end
end
