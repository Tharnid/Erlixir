defmodule TextClient.Mover do

  alias TextClient.State

  def make_move(game) do
    { gs, tally } = Hangman2.make_move(game.game_service, game.guess)
    %State{ game | game_service: gs, tally: tally }
  end

end

# rm -rf _build/ gets rid of builds
