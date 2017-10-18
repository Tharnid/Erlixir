defmodule SocketGallowsWeb.UserSocket do
  use Phoenix.Socket

  ## Channels
  # channel "room:*", SocketGallowsWeb.RoomChannel
  channel "hangman2:*", SocketGallows.Web.Hangman2Channel

  ## Transports
  transport :websocket, Phoenix.Transports.WebSocket
  # transport :longpoll, Phoenix.Transports.LongPoll

  def connect(_params, socket) do
    {:ok, socket}
  end

  def id(_socket), do: nil
end
