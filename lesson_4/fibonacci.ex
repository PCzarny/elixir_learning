# Create a function that generates the Fibonacci sequence up to a given quantity.
# Use streams to produce it. You’ll need to take a look at the Stream.unfold/2 function.
# Tip: Try to make the recursive version first.

defmodule Fibonacci do
  def run (n) do
    Stream.unfold({nil, nil}, fn
      {nil, nil} -> {0, {nil, 0}}
      {nil, 0} -> {1, {0, 1}}
      {a, b} -> {a + b, {b, a + b}}
    end)
    |> Stream.take(n)
    |> Enum.to_list
  end
end
