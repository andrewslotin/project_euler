defmodule Euler do
  def ex3(n) do
    Enum.filter(primes(Float.ceil(:math.sqrt(n))), fn x -> rem(n, x) == 0 end)
    |> List.last
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

IO.puts Euler.ex3(600851475143)
