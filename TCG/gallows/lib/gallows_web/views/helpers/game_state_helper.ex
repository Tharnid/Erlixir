defmodule Gallows.Views.Helpers.GameStateHelper do

  import Phoenix.HTML, only: [ raw: 1 ]

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
    |> raw() # not available in view module
  end

end
