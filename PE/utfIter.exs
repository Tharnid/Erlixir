defmodule Utf8 do

  defp _each(<< head :: utf, tail :: binary >>, func) do
    func.(head)
    _each(tail, func)
  end

  defp _each(<<>>, _func), do: []

end

Utf8.each "Babydoll", fn char -> IO.puts char end
