defmodule TwoSum do
  @moduledoc """
  Two Sum problem
  Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
  # Example:
  iex> Solution.two_sum([2,7,11,15], 9)
  [0, 1]

  # Solution:
  Create a map that stores the difference of the target and the current number as the key and the index as the value.
  If number is in the map, return the index of the number and the value of the map.
  If number is not in the map, add the number as the key and the index as the value.
  """

  def two_sum(nums, target) do
    Enum.reduce_while(nums, {%{}, 0}, fn n, {map, i} ->
       complement = Map.get(map, target - n)
       if complement do
         {:halt, [i, complement]}
       else
          {:cont, {Map.put(map, n, i), i + 1}}
       end
    end)
  end
end
