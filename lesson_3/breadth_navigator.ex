# Create a BreadthNavigator module that has a breadth constraint;
# it will be the maximum number of sibling directories it can navigate.

defmodule BreadthNavigator do
  @max_breadth 3

  def navigate(dir) do
    dir
      |> Path.expand
      # |> (fn x -> [x] end).() # Other option, what is more readable
      |> (&([&1])).()
      |> go_through
  end

  defp go_through([]) do nil end
  defp go_through([content | rest]) do
    print_and_navigate(content, dir?(content))
    go_through(rest)
  end

  defp print_and_navigate(file, false) do IO.puts(file) end
  defp print_and_navigate(dir, true) do
    IO.puts(dir)
    dir
      |> File.ls!
      |> Enum.split(@max_breadth)
      |> elem(0)
      |> expand_dirs(dir)
      |> go_through
  end

  defp expand_dirs([], _) do [] end
  defp expand_dirs([dir | dirs], relative_to) do
    expanded_dir = Path.expand(dir, relative_to)
    [expanded_dir | expand_dirs(dirs, relative_to)]
  end

  defp dir?(dir) do
    case File.lstat(dir) do
      {:ok, %{type: :directory}} -> true
      _ -> false
    end
  end
end
