defmodule TextClient.Player do

  alias TextClient.{Mover, Prompter, State, Summary}

  # game won, lost, good guess, bad guess, already used, initializing
  def play(%State{tally: %{ game_state: :won }}) do
    exit_with_message("You WON!!!")
  end

  def play(%State{tally: %{ game_state: :lost }}) do
    exit_with_message("You lost :-(")
  end

  def play(game = %State{tally: %{ game_state: :good_guess }}) do
    continue_with_message(game, "Good Guess!!!")
  end

  def play(game = %State{tally: %{ game_state: :bad_guess }}) do
    continue_with_message(game, "You guessed poorly")
  end

  def play(game = %State{tally: %{ game_state: :bad_guess }}) do
    continue_with_message(game, "You already useed that letter!!!")
  end

  def play(game) do
    continue(game)
  end

  def continue_with_message(game, message) do
    IO.puts(message)
    continue(game)
  end

  def continue(game) do
    game
    |> Summary.display()
    |> Prompter.accept_move()
    |> Mover.make_move()
    |> play()
  end

  # helper function
  defp exit_with_message(msg) do
    IO.puts(msg)
    exit(:normal) # expected don't try to recover
  end
end
