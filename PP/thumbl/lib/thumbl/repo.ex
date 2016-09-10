defmodule Thumbl.Repo do
  # use Ecto.Repo, otp_app: :thumbl

  def all(Thumbl.User) do
    [
      %Thumbl.User{id: "1", name: "Terrell", username: "terrellYa", password: "yourmom"},
      %Thumbl.User{id: "2", name: "Tharnid", username: "tharNid", password: "saldor"},
      %Thumbl.User{id: "3", name: "Saldor", username: "salDor", password: "aragoth"},
      %Thumbl.User{id: "4", name: "Aragoth", username: "araGoth", password: "tharnid"}
    ]
  end

  def get(module, id) do
    Enum.find all(module), fn map -> map.id == id end
  end

  def get_by(module, params) do
    Enum.find all(module), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end
  end

  def all(_module), do: []

end
