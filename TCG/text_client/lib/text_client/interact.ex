defmodule TextClient.Interact do

  alias TextClient.State

  def start() do
    Hangman2.new_game()
    |> setup_state()
    |> IO.inspect
  end

  defp setup_state(game) do
    %State{
      game_service: game,
      tally: Hangman2.tally(game)
    }
  end

  # def play(state) do
  #   # interactions
  #   # play(state)
  # end
end
