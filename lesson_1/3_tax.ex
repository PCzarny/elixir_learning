# Build an anonymous function that applies a tax of 12% to a given price. It should print a message
# with the new price and tax value. Bind the anonymous function to a variable called apply_tax.
# You should use apply_tax with Enum.each/2.

tax_rate = 0.12
apply_tax = fn price ->
  IO.puts "Price: #{price * (1 + tax_rate)} - Tax: #{price * tax_rate}"
end

Enum.each [12.5, 30.99, 250.49, 18.80], apply_tax
