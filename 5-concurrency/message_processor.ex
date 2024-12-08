defmodule MessageProcessor do
  def start do
    # Start the receive loop
    loop()
  end

  defp loop do
    receive do
      {:warning, message} ->
        IO.puts("Warning: #{message}")
        loop() # Continue listening for messages

      {:error, message} ->
        IO.puts("Error: #{message}")
        loop() # Continue listening for messages

      {:ok, message} ->
        IO.puts("Success: #{message}")
        loop() # Continue listening for messages

      _ ->
        IO.puts("Unknown message received")
        loop() # Continue listening for messages
    end
  end
end
