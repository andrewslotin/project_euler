defmodule Euler.Ex6 do
  def solution(n \\ 100) do
    Enum.reduce (for i <- 1..n - 1, j <- i + 1..n, do: 2 * i * j), 0, &+/2
  end
end
