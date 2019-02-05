defmodule Songs.SongController do
  use Songs.Web, :controller

  alias Songs.Song

  def new(conn, params) do
    changset = Song.changeset(%Song{}, %{})

    render conn, "new.html"
  end
end
