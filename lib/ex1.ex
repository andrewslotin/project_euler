defmodule Euler.Ex1 do
  def solution(max \\ 1000) do
    Enum.reduce 1..max - 1, 0, fn
      x, acc when rem(x, 3) == 0 or rem(x, 5) == 0 -> x + acc
      _, acc -> acc
    end
  end
end

