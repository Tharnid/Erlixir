defmodule Auction.MixProject do
  use Mix.Project

  def project do
    [
      app: :auction,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Auction.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, "~> 2.2.7"},
      {:postgrex, "~> 0.13.5"},
      {:uuid, "~> 1.1"},
      {:comeonin, "~> 4.1"},
      {:bcrypt_elixir, "~> 0.12.1"}
    ]
  end
end
