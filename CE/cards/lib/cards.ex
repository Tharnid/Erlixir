defmodule Cards do

  @moduledoc """ 
  
    Provides methods for creating and handling a deck of cards

  """

  # mix docs - creates documentation

  def hello do
    "hi from Elixir!!!"
    # Cards.hello
  end

  # list of playing cards
  @doc """ 
    Returns a list of strings representing playing cards
  
  """
  def create_deck do
    values = ["Ace", "King", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

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

  @doc """ 
    Determine whether a deck contains a given card
  
    ## Examples
          iex> deck = Cards.create_deck
          iex> Cards.contains?(deck, "Ace of Spades")
          true
  """

  def contains?(deck, card) do # ? return T or F...boolean 
    Enum.member?(deck, card)
  end

   @doc """ 
    Divides a deck into a hand and the rest of the cards
    The `hand_size` argument indicates how many cards should be in the hand
  
      ## Examples 

            iex> deck = Cards.create_deck
            iex> {hand, deck} = Cards.deal(deck, 1)
            iex> hand 
            ["Ace of Spades"]
  """ 



  def deal(deck, hand_size) do
    Enum.split(deck, hand_size) # hand is always index 0 Pattern Matching
  end

  # save a deck to FS
  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  # reloading file...pattern matching again

  # { status, binary } = File.read("my_deck")

  # :erlang.binary_to_term(binary) // converts back to list of strings

  # def load(filename) do # Cards.load("my_deck")
  #   {status, binary} = File.read(filename)
    
  #   case status do
  #     :ok -> :erlang.binary_to_term binary
  #     :error -> "That file does not exist"
  #   end
  #   # :erlang.binary_to_term binary # loads deck
  #   # handle error message tuple (:atom, :atom) symbol
  # end

  def load(filename) do # Cards.load("my_deck")
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term binary
      {:error, _reason} -> "That file does not exist!!!" # _ tells elixir there will be an element but we don't care
    end  
  end  

  def create_hand(hand_size) do
    # deck = Cards.create_deck
    # deck = Cards.shuffle(deck)
    # hand = Cards.deal(deck, hand_size)

    Cards.create_deck
    |> Cards.shuffle
    |> Cards.deal(hand_size)
  end

end

# :string is called a symbol

# Pattern Matching

# color = "red"
# [color] = ["red"]

# ["red", color] = ["red", "blue"]