# In Chapter 4, ​Diving into Recursion​, we built a module called EnchanterShop that transforms mundane
# items into magical items for sale. Build this module again, but now apply the higher-order functions
# that you learned in this chapter.

defmodule EnchanterShop do
  @enchanter_name "Edwin"

  def test_data do
    [
      %{title: "Longsword", price: 50, magic: false},
      %{title: "Healing Portion", price: 60, magic: true},
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Spear", price: 100, magic: true},
    ]
  end

  defp transform (item = %{magic: true}) do item end
  defp transform (item) do
    %{
      title: "#{@enchanter_name}'s #{item.title}",
      price: item.price * 3,
      magic: true
    }
  end
  def enchant_for_sale (items) do
    Enum.map(items, &transform/1)
  end
end

EnchanterShop.test_data |> EnchanterShop.enchant_for_sale |> IO.inspect
