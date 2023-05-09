defmodule Solution do
  @spec diagonal_sum(mat :: [[integer]]) :: integer
  def diagonal_sum(mat) do
    # calculate sum of diagonal elements
    # return sum


      sum_1_2 = Enum.reduce(0..length(mat) - 1, 0, fn i, acc ->
        acc + Enum.at(Enum.at(mat, i), i) + Enum.at(Enum.at(mat, length(mat) - i - 1), i)
      end)

      if rem(length(mat), 2) == 0 do
        sum_1_2
      else
        sum_1_2 - Enum.at(Enum.at(mat, div(length(mat), 2)), div(length(mat), 2))
      end
  end
end
