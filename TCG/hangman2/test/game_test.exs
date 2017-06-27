defmodule GameTest do
  use ExUnit.Case

  alias Hangman2.Game

  test "new_game return structure" do
    game = Game.new_game()

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 0
  end

  test "sate isn't changedc ro :won or :lost game" do
    for state <- [ :won, :lost ] do
      game = Game.new_game() |> Map.put(:game_state, state)
      assert { ^game, _ } = Game.make_move(game, "x")
    end
  end

  #test "sate isn't changedc ro :lost game" do
  #  game = Game.new_game()
  #    |> Map.put(:game_state, :lost)
    #{ new_game, _} = Game.make_move(game, "x")
    # assert new_game == game
  #  assert { ^game, _ } = Game.make_move(game, "x")
  # end



end
