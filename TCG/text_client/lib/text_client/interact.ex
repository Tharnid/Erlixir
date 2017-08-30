defmodule TextClient.Interact do

  @hangman2_server :hangman2@tharnid

  # alias TextClient.State
  alias TextClient.{Player, State} # alias shortcut
  def start() do
    new_game()
    |> setup_state()
    # |> IO.inspect Passes state through the pipeline
    |> Player.play()
  end

  defp setup_state(game) do
    %State{
      game_service: game,
      tally: Hangman2.tally(game),
    }
  end

  # def play(state) do
  #   # interactions
  #   # play(state)
  # end

  defp new_game() do
    Node.connect(@hangman2_server)
    :rpc.call(@hangman2_server,
      Hangman2,
      :new_game,
      [])
  end

end
