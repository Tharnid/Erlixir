defmodule Thumbl.UserController do
  use Thumbl.Web, :controller

  def index(conn, _params) do
    users = Repo.all(Thumbl.User)
    render conn, "index.html", users: users
  end
end
