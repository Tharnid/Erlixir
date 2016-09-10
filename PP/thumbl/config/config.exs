# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :thumbl,
  ecto_repos: [Thumbl.Repo]

# Configures the endpoint
config :thumbl, Thumbl.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "d+iu0L0AMWxyiHxTKi9xCr+JbTqW1fl25EIhW/LGi6aZhA4nSEOSric6DGILgPCp",
  render_errors: [view: Thumbl.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Thumbl.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
