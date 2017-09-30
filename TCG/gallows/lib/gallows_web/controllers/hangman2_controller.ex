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
end
