defmodule Lists do
  # [a, b, c]

  # length of list

  def len([]),  do: 0
  def len([_h|t]), do: 1 + len(t)

  # sum of list

  def sum([]),  do: 0
  def sum([h|t]), do: h + sum(t) # add head to some of tail

  # double list elements

  def double([]),  do: []
  def doubles([h|t]), do: [ 2*h | double(t) ] # double head and tail

  # square

  def square([]),  do: []
  def square([h|t]), do: [ h*h | square(t) ] # double head and tail

  # Map

  # def map(list, func)
  def map([], func), do: []
  def map([h|t],func ) do
    [ func.(h) | map(t, func)]
  end
end
S
