# Create a module called MatchstickFactory and a function called boxes/1. The function will
# calculate the number of boxes necessary to accommodate some matchsticks. It returns a map with
# the number of boxes necessary for each type of box. The factory has three types of boxes: the big
# ones hold fifty matchsticks, the medium ones hold twenty, and the small ones hold five.
# The boxes can’t have fewer matchstick that they can hold; they must be full. The returning map
# should contain the remaining matchsticks.

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
