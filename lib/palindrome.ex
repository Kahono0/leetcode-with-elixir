defmodule Palindrome do

  @doc """
  Given a string which we can delete at most k, return whether you can make a palindrome.
  """

  """
  @spec is_palindrome(String.t(), integer) :: boolean
  def is_palindrome(str, k) do
    count = 0
    0..k-1
    |> Enum.each(fn x ->
      if count > k do
        {:halt, count}
      end
      case Enum.at(str,x) == Enum.at(str, -x-1) do
        true -> count = count
        false -> count = count + 1
      end
    end)
  end
  """

  def is_palindrome(str, k) do
    count = 0
    0..k-1
    |> Enum.each(fn x ->
      case String.at(str,x) == String.at(str, -x-1) do
        true -> count = count |> IO.puts "checking #{String.at(str,x)} and #{String.at(str, -x-1)}"
        false -> count = count + 1
      end
    end)
    if count > k do
      false
    else
      true
    end
  end

  def check(str, k) do
    check(str, k, 0)
  end

  defp check(str, k, count) when count > k do
    false
  end

  defp check(str, k, count) when count <= k do
    IO.puts "checking #{str} when count is #{count}"
    case String.length(str) do
      0 -> true
      1 -> true
      _ -> case String.at(str,0) == String.at(str, -1) do
        true -> check(String.slice(str, 1..-2), k, count)
        false -> check(String.slice(str, 1..-1), k, count + 1) || check(String.slice(str, 0..-2), k, count + 1)
      end
    end
  end
end
