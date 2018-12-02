# Implement the Quicksort algorithm. Tip: You can use the first item of the list to be the pivot,
# and employ the Enum.split_with/2 higher-order function.

defmodule QuickSort do
  def sort ([]) do [] end
  def sort ([head | tail]) do
    tail
      |> Enum.split_with(&(&1 <= head))
      |> (fn ({left, right}) -> sort(left) ++ [head] ++ sort(right) end).()
  end
end
