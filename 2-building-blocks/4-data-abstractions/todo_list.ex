defmodule TodoList do
  def new() do
    %{}
  end

  def add_entry(todo_list, date, title) do
    Map.update(todo_list, date, [title], fn x -> [title | x] end)
  end

  def entries(todo_list, date) do
    Map.get(todo_list, date, [])
  end
end


# Documentation
# Map.update(map, key, default_value, function)
# Updates the key in map with the given function.
# If key is present in map then the existing value is passed to fun and its result is used as the updated value of key.
# If key is not present in map, default is inserted as the value of key. The default value will not be passed through the update function.
#Ex.:
# map = %{a: 1, b: 2}
# updated_map = Map.update(map, :a, 0, fn val -> val + 10 end)
# Result: %{a: 11, b: 2}

# map = %{a: 1, b: 2}
# updated_map = Map.update(map, :c, 0, fn val -> val + 10 end)
# Result: %{a: 1, b: 2, c: 0}


# Map.get(todo_list, date, [])
# Map.get(map, key, default_value)
# Gets the value for a specific key in map.
# If key is present in map then its value value is returned. Otherwise, default is returned.
# If default is not provided, nil is used.
