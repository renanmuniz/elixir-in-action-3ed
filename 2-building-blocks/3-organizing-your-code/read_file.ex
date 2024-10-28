defmodule ReadFile do
  def read_file_content(file_path) do
    with {:ok, file} <- File.open(file_path),
         content when is_binary(content) <- IO.read(file, :eof),
         :ok <- File.close(file) do
      {:ok, content}
    else
      {:error, reason} -> {:error, "Falha: #{reason}"}
    end
  end
end
