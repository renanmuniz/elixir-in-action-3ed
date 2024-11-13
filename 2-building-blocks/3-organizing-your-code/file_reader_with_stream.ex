defmodule FileReaderWithStream do
  def read_file(filename) do
    # Use File.stream!/1 to read the file line by line
    File.stream!(filename)
    |> Stream.each(&IO.puts/1) # Print each line as it's read
    |> Stream.run()            # Run the stream to execute the operations
  end

  def medir_tempo(filename) do
    {tempo, resultado} = :timer.tc(fn -> read_file(filename) end)
    IO.puts("Tempo de execução: #{tempo/1_000_000} segundos")
    # resultado
  end
end
