defmodule Euler.Ex5 do
  def solution(n \\ 20) do
    import Euler.Ex3, only: [primes: 1]
    
    n_log = :math.log(n)
    Enum.reduce (for x <- primes(n), do: round(:math.pow(x, Float.floor(n_log/:math.log(x))))), 1, &*/2
  end
end
