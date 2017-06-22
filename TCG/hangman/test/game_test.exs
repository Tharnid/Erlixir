defmodule GameTest do
  use ExUnit.case

  alias Hangman.Game

  test "new_game returns structure" do
    game = Game.new_game()

    assert game.turns_left == 8
    assert game.game_state == :initializing
  end

end
