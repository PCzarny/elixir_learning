# Create a function that calculates income tax following these rules: a salary equal or below $2,000
# pays no tax; below or equal to $3,000 pays 5%; below or equal to $6,000 pays 10%; everything higher
# than $6,000 pays 15%.

# Create an Elixir script where users can type their salary and see the income tax and the net wage.
# You can use the module from the previous exercise, but this script should parse the user input
# and display a message when users type something that is not a valid number.


defmodule Taxes do
  def run do
    user_input = IO.gets("Type your income:\n")
    case Integer.parse(user_input) do
      :error ->
        IO.puts("Invalid income. Try again")
        Taxes.run()
      {income, _} ->
        %{tax: tax, net: net } = calculate_tax(income)
        IO.puts("Income:\t#{income}\nTax:\t#{tax}\n-----------\nNet:\t#{net}")
    end
  end

  def calculate_tax (income) do
    tax_rate = get_tax_rate(income)
    %{tax: income * tax_rate, net: income * (1 - tax_rate)}
  end

  defp get_tax_rate (income) do
    cond do
      income <= 2000 -> 0
      income <= 3000 -> 0.05
      income <= 6000 -> 0.10
      true -> 0.15
    end
  end
end
