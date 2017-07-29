defmodule Hangman2 do

  alias Hangman2.Game

  defdelegate new_game(),             to: Game
  defdelegate tally(game),            to: Game
  defdelegate make_move(game, guess) , to: Game

end
