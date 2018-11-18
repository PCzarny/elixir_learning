tax_rate = 0.12
apply_tax = fn price ->
  IO.puts "Price: #{price * (1 + tax_rate)} - Tax: #{price * tax_rate}"
end

Enum.each [12.5, 30.99, 250.49, 18.80], apply_tax
