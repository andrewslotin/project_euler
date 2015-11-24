defmodule Euler.Ex2 do
  def solution(max \\ 4_000_000) do
    solution(1, 2, 0, max) 
  end

  def solution(x, _, acc, max) when x > max do
    acc
  end

  def solution(x, next, acc, max) when rem(x, 2) == 0 do
    solution(next, next + x, acc + x, max)
  end

  def solution(x, next, acc, max) do
    solution(next, next + x, acc, max)
  end
end
