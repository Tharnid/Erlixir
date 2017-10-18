defmodule SocketGallows.Web.Hangman2Channel do

  use Phoenix.Channel

  def join("hangman2:game", _, socket) do
    { :ok, socket }
  end
end
