# We’ve created a function that sorts the items of a list in ascending order.
# Now create a Sort.descending/1 function that sorts the elements in descending order.

defmodule Sort do
  defp merge([], list_b) do list_b end
  defp merge(list_a, []) do list_a end
  defp merge([head_a | tail_a], list_b = [head_b | _]) when head_a > head_b do
    [head_a | merge(tail_a, list_b)]
  end
  defp merge(list_a, [head_b | tail_b]) do
    [head_b | merge(list_a, tail_b)]
  end

  def descending([]) do [] end
  def descending([item]) do [item] end
  def descending(list) do
    half_size = list |> Enum.count() |> div(2)
    {list_a, list_b} = Enum.split(list, half_size)

    merge(descending(list_a), descending(list_b))
  end
end
