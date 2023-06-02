defmodule Palindrome do

  @doc """
  Given a string which we can delete at most k, return whether you can make a palindrome.
  """

  def check(str, k) do
    check(str, k, 0)
  end

  defp check(str, k, count) when count > k do
    false
  end

  defp check(str, k, count) when count <= k do
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
