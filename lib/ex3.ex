defmodule Euler.Ex3 do
  def solution(n \\ 600851475143) do
    Enum.filter(primes(Float.ceil(:math.sqrt(n))), fn x -> rem(n, x) == 0 end)
    |> Enum.reverse
    |> hd
  end

  def primes(n) do
    2..round(n)
    |> Enum.to_list
    |> filter_composite
  end

  def filter_composite([prime|rest]) do
    [prime|filter_composite(Enum.filter(rest, fn x -> rem(x, prime) != 0 end))]
  end

  def filter_composite([]) do
    []
  end
end
