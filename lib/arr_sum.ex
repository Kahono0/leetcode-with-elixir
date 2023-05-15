defmodule Sum do

  def sum_arr(arr,count) do
    case arr do
      [] -> count
      [_ | tail] -> sum_arr(tail, count + 1)
    end
  end
end
