defmodule GallowsWeb.Hangman2View do
  use GallowsWeb, :view

  def game_over?(%{ game_state: game_state }) do
    game_state in [ :won, :lost ]
  end

  def new_game_button(conn) do
    button("New Game", to: hangman2_path(conn, :create_game ))
  end

  # responses correspond with BS classes
  @responses %{
    :won => { :success, "You Won!!!" },
    :lost => { :danger, "You Lost!!!" },
    :good_guess => { :success, "Good Guess!!!" },
    :bad_guess => { :warning, "Bad Guess!!!" },
    :already_used => { :info, "You already guessed that!!!" },
  }

  # game state
  def game_state(state) do
    @responses[state]
    |> alert()
  end

  defp alert(nil), do: ""
  defp alert({class, message}) do
    """
    <div class="alert alert-#{class}">
      #{message}
    </div>
    """
    |> raw()
  end

end
