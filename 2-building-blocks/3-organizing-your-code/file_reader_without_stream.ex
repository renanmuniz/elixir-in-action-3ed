defmodule FileReaderWithoutStream do
  def read_file(filename) do
    # Read the file contents
    case File.read(filename) do
      {:ok, content} ->
        # Split the content into lines
        lines = String.split(content, "\n", trim: true)

        # Print each line (or process it as needed)
        Enum.each(lines, fn line ->
          IO.puts(line)
        end)

        # Return the lines as a list, if needed
        lines

      {:error, reason} ->
        IO.puts("Failed to read file: #{reason}")
        []
    end
  end

  def medir_tempo(filename) do
    {tempo, resultado} = :timer.tc(fn -> read_file(filename) end)
    IO.puts("Tempo de execução: #{tempo/1_000_000} segundos")
    # resultado
  end
end
