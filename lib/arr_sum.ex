defmodule Sum do
  """
  def sum_arr(arr,count) do
    case arr do
      [] -> count
      [_ | tail] -> sum_arr(tail, count + 1)
    end
  end
  """

  def sum(0), do: 0
  def sum(n), do: n + sum(n - 1)

end
