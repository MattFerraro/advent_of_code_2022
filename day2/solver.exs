# defmodule Basics do
#   def score(opponent_move, my_move) do
#     Enum.sum(Enum.map(list, fn el -> String.to_integer(el) end))
#   end
# end

{:ok, data} = File.read("input.txt")

data
|> String.split("\n")
|> Enum.map(&String.split/1)
|> IO.inspect()
