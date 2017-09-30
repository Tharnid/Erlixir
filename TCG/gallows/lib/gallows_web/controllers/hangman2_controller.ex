defmodule GallowsWeb.Hangman2Controller do
  use GallowsWeb, :controller

  def new_game(conn, _params) do
    render conn, "new_game.html"
  end

  def create_game(conn, _params) do
    game = Hangman2.new_game()
    tally = Hangman2.tally(game)

    conn
    |> put_session(:game, game)
    |> render("game_field.html", tally: tally)
  end

  def make_move(conn, params) do
    # raise inspect(params)
    guess = params["make_move"]["guess"]
    # game = get_session(conn, :game)
    # tally = Hangman2.make_move(game, guess)
    tally =
      conn
      |> get_session(:game)
      |> Hangman2.make_move(guess)
      
    put_in(conn.params["make_move"]["guess"], "")
    |> render("game_field.html", tally: tally)
  end
end
