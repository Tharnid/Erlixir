defmodule Cards do

  def hello do
    "hi from Elixir!!!"
    # Cards.hello
  end

  # list of playing cards
  def create_deck do
    values = ["Ace", "King", "Two", "Three", "Four", "Five"]
    suits = ["Spaces", "Clubs", "Hearts", "Diamonds"]

    # iterate over collection elements
    # list comprehension
    for suit <- suits do # essentially a mapping function
      "Is this a map?"
    end
  end
  # from iex recompile or r...c
  # iex -S mix

  # arity number of arguments a function excepts shuffle/1 (one argument etc)

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do # ? return T or F...boolean 
    Enum.member?(deck, card)
  end

end
