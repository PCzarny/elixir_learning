# Create a function that returns Tic-Tac-Toe game winners. You can represent the board
# with a tuple of nine elements, where each group of three items is a row. The return of the function
# should be a tuple. When we have a winner, the first element should be the atom :winner,
# and the second should be the player. When we have no winner, the tuple should contain one item
# that is the atom :no_winner.

defmodule TicTacToe do
  def winner (board) do
    case board do
      { m, m, m, _, _, _, _, _, _ } -> {:winner, m}
      { _, _, _, m, m, m, _, _, _ } -> {:winner, m}
      { _, _, _, _, _, _, m, m, m } -> {:winner, m}

      { m, _, _, m, _, _, m, _, _ } -> {:winner, m}
      { _, m, _, _, m, _, _, m, _ } -> {:winner, m}
      { _, _, m, _, _, m, _, _, m } -> {:winner, m}

      { m, _, _, _, m, _, _, _, m } -> {:winner, m}
      { _, _, m, _, m, _, m, _, _ } -> {:winner, m}

      _ -> {:no_winner}
    end
  end
end
