defmodule Thumbl.UserView do
  use Thumbl.Web, :view
  alias Thumbl.User

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
