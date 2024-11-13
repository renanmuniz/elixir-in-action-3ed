defmodule RandomTextFileGenerator do
  # Generates a file with random text lines of varying lengths
  def generate_file(line_count, filename \\ "random_text.txt") do
    # Open the file in write mode
    File.open(filename, [:write], fn file ->
      # Generate each line with random content
      Enum.each(1..line_count, fn _ ->
        # Create a random line of text with length between 50 and 200 characters
        random_text = random_text(50..200)
        # Write the line to the file, adding a newline character at the end
        IO.write(file, random_text <> "\n")
      end)
    end)

    # Return a success message
    {:ok, "#{line_count} lines of random text written to #{filename}"}
  end

  # Generates random text with a specified length range
  defp random_text(length_range) do
    length = Enum.random(length_range)

    # Generate a string with random letters and spaces
    1..length
    |> Enum.map(fn _ -> Enum.random(?a..?z) end)
    |> Enum.join()
  end
end

# Example usage:
# RandomTextFileGenerator.generate_file(10)
