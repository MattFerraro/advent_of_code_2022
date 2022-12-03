defmodule Basics do
  def cast_and_sum(list) do
    Enum.sum(Enum.map(list, fn el -> String.to_integer(el) end))
  end
end

{:ok, data} = File.read("input.txt")

data
|> String.replace("\n\n", "|")
|> String.split("|", trim: true)
|> Enum.map(fn x -> String.split(x, "\n") end)
|> Enum.map(&Basics.cast_and_sum/1)
|> Enum.sort(:desc)
|> Enum.take(3)
|> Enum.sum()
|> IO.inspect()

# This way works but requires a lot of intermediate variables
# choppable = String.replace(data, "\n\n", "|")
# chopped = String.split(choppable, "|", trim: true)
# mapped = Enum.map(chopped, fn x -> String.split(x, "\n") end)

# sums = Enum.map(mapped, &Basics.cast_and_sum/1)
# sorted = Enum.sort(sums, :desc)
# top3 = Enum.take(sorted, 3)
# final_sum = Enum.sum(top3)
# IO.inspect(final_sum)
