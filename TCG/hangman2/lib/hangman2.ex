defmodule Hangman2 do

  alias Hangman2.Game

  defdelegate new_game(), to: Game

end
