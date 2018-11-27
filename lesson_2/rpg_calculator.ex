# In RPGs, players have points to spend on their character attributes.
# Create a function that returns the total number of points players have spent on their characters.
# The function will receive a map containing the strength, dexterity, and intelligence values.
# Each point in strength should be multiplied by two, and dexterity and intelligence should be
# multiplied by three.

defmodule RPGCalculator do
  # %{ strength: 2, dexterity: 1, intelligence: 3}
  def calculate_cost (requirements) do
    requirements
      |> Enum.map(&calculate_attribute_cost/1)
      |> Enum.sum()
  end

  defp calculate_attribute_cost({ :strength, value }) do 2 * value end
  defp calculate_attribute_cost({ key, value }) when key in [:dexterity, :intelligence] do 3 * value end
  defp calculate_attribute_cost({ key, _ }) do raise "Incorrect attribute name: #{key}" end
end
