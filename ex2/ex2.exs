defmodule Euler do
  def ex2(max) do
    ex2(1, 2, 0, max) 
  end

  def ex2(x, _, acc, max) when x > max do
    acc
  end
 
  def ex2(x, next, acc, max) when rem(x, 2) == 0 do
    IO.puts "add #{x}"
    ex2(next, next + x, acc + x, max)
  end

  def ex2(x, next, acc, max) do
    IO.puts "skip #{x}"
    ex2(next, next + x, acc, max)
  end
end

IO.puts Euler.ex2(4000000)
