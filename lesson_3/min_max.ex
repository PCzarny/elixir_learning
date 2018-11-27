# Write two recursive functions:
# one that finds the biggest element of a list
# and another that finds the smallest.

defmodule MinMax do
  def min ([]) do nil end
  def min ([a]) do a end
  def min ([head | tail]) do
    tail_min = min(tail)
    cond do
      head < tail_min -> head
      true -> tail_min
    end
  end

  def max ([]) do nil end
  def max ([a]) do a end
  def max ([head | tail]) do
    tail_max = max(tail)
    cond do
      head > tail_max -> head
      true -> tail_max
    end
  end
end
