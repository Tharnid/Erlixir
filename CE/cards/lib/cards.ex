defmodule Cards do

  def hello do
    "hi from Elixir!!!"
    # Cards.hello
  end

  # list of playing cards
  def create_deck do
    values = ["Ace", "King", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    # iterate over collection elements
    # list comprehension
    # for value <- values do 

    #   for suit <- suits do # essentially a mapping function
    #     "#{value} of #{suit}"
    #   end

    # end      

    # not a bad solution
    # cards = for value <- values do
    #   for suit <- suits do
    #     "#{value} of #{suit}"
    #   end
    # end

    # List.flatten(cards)

    # best version
    for suit <- suits, value <- values do
      "#{value} of #{suit}"
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

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size) # hand is always index 0
  end
end

# Cards.deal(deck, 5) { *hand*, *deck* }
# Cards.deal(deck, 5) { hand: [], deck: []}

# pattern matching is elixirs replacement for assignment