defmodule Euler do
  def ex1(a) do
    Enum.reduce a, 0, fn
      x, acc when rem(x, 3) == 0 or rem(x, 5) == 0 -> x + acc
      _, acc -> acc
    end
  end
end

IO.puts Euler.ex1(1..999)
