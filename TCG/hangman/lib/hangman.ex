defmodule Hangman do

  alias Hangman.Game # leave as: off and it will call game

  defdelegate new_game(), to: Game 

end
