defmodule GallowsWeb.Hangman2Controller do
  use GallowsWeb, :controller

  def new_game(conn, _params) do
    render conn, "new_game.html"
  end
end
