defmodule GameTest do
  use ExUnit.case

  alias Hangman.Game

  test "new_game returns structure" do
    game = Game.new_game()

    assert game.turns_left == 1
    assert game.game_state == :initializing
    assert length(game.letters) > 0
  end

end
