defmodule Thumbl.PageController do
  use Thumbl.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
