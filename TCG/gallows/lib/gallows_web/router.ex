defmodule GallowsWeb.Router do
  use GallowsWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/hangman2", GallowsWeb do
    pipe_through :browser # Use the default browser stack

    get "/", Hangman2Controller, :new_game

    post "/", Hangman2Controller, :create_game

    put "/", Hangman2Controller, :make_move
  end

end
