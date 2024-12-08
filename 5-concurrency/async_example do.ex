defmodule AsyncExample do
  def sample_function do
    # Simulate a long-running process
    :timer.sleep(5000)
    10 + 10
  end

  def main do
    # Get the current process (self) PID
    parent = self()

    # Spawn a new process to execute the sample_function
    spawn(fn ->
      result = sample_function()
      # Send the result back to the parent process
      send(parent, {:result, result})
    end)

    # Executes some other tasks:
    IO.puts("Executing some other task until the spawned process ends...1")
    :timer.sleep(1000)
    IO.puts("Executing some other task until the spawned process ends...2")
    :timer.sleep(1000)
    IO.puts("Executing some other task until the spawned process ends...3")

    # Wait for the result from the spawned process
    receive do
      {:result, result} ->
        IO.puts("Received result: #{result}")
    after
      10000 ->
        IO.puts("Timed out waiting for the result")
    end
  end
end
