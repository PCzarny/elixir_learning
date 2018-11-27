# Write the tail-recursive versions of Sum.up_to/1 and Math.sum/1.
# Extra challenge: write the tail-recursive version of Sort.merge/2.

defmodule TRSum do
  def up_to(n) do up_to_tr(n, 0) end
  defp up_to_tr(0, acc) do acc end
  defp up_to_tr(n, acc) do up_to_tr(n - 1, acc + n) end

  def sum(arr) do sum_tr(arr, 0) end
  defp sum_tr([], acc) do acc end
  defp sum_tr([head | tail], acc) do sum_tr(tail, acc + head) end

  # Concatenation is quite slow. Does exist faster solution
  def merge(list_a, list_b) do merge_tr(list_a, list_b, []) end
  defp merge_tr([], list_b, acc) do acc ++ list_b end
  defp merge_tr(list_a, [], acc) do acc ++ list_a end
  defp merge_tr([head_a | tail_a], list_b = [head_b | _], acc) when head_a <= head_b do
    merge_tr(tail_a, list_b, acc ++ [head_a])
  end
  defp merge_tr(list_a, [head_b | tail_b], acc) do
    merge_tr(list_a, tail_b, acc ++ [head_b])
  end
end
