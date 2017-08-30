defmodule TextClient.Mixfile do
  use Mix.Project

  def project do
    [app: :text_client,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [
      included_applications: [ :hangman2 ],
      extra_applications:    [ :logger ],
    ]
  end

  defp deps do
    [
      { :dictionary, path: "../dictionary" },
      { :hangman2, path: "../hangman2" },
    ]
  end
end
