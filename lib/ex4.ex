defmodule Euler.Ex4 do
  def solution(n \\ 3)

  def solution(n) when n < 2 do
    raise "n must have length more than 1"
  end

  def solution(n) do
    is_palindrome? = fn x -> to_string(x) == String.reverse(to_string(x)) end

    {min, max} = {round(:math.pow(10, n - 1)), round(:math.pow(10, n) - 1)}
    for i <- min..max,
        j <- min..i,
        is_palindrome?.(i * j)
    do i * j end
    |> Enum.sort
    |> Enum.reverse
    |> hd
  end
end
