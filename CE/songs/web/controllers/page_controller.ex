defmodule Songs.PageController do
  use Songs.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
