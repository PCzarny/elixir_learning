defmodule Checkout do
  def total_price(price, tax_rate), do: price * (1 + tax_rate)
end