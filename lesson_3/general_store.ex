# Create a new module called GeneralStore where you can create a function that filters based
# on whether the products are magical.

defmodule GeneralStore do
  def filter_items([], _) do [] end
  def filter_items([item = %{magic: is_magical} | incoming_items], magic: is_magical) do
    [item | filter_items(incoming_items, magic: is_magical)]
  end
  def filter_items([_ | incoming_items], magic: is_magical) do
    filter_items(incoming_items, magic: is_magical)
  end
end
