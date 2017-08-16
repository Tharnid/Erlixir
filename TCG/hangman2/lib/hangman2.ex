defmodule Hangman2 do

  # defdelegate new_game(),             to: Game
  def new_game() do
    # Hangman2.Server.start_link()
    { :ok, pid } = Supervisor.start_child(Hangman2.Supervisor, [])
    pid
  end
  #defdelegate tally(game),            to: Game
  def tally(game_pid) do
    GenServer.call(game_pid, { :tally })
  end

  #defdelegate make_move(game, guess) , to: Game
  def make_move(game_pid, guess) do
    GenServer.call(game_pid, { :make_move, guess })
  end

end
