defmodule MatchstickFactory do
  @boxes_capacity [
    big: 50,
    medum: 20,
    small: 5,
    remaining_matchsticks: 1,
  ]

  def boxes(sticks_amount) do
    @boxes_capacity
    |> Enum.sort(fn ({ _key1, capacity1 }, { _key2, capacity2 }) -> capacity1 >= capacity2 end)
    |> Enum.map_reduce(sticks_amount, fn ({ key, capacity }, remaining) -> { { key, div(remaining, capacity)}, rem(remaining, capacity) } end)
    |> elem(0)
  end

end
