defmodule Dictionary.Application do

  use Application

  def start(_type, _args) do

    import Supervisor.Spec

    children = [
      worker(Dictionary.WordList, []),
    ]

    options = [
      name: Dictionary.Supervisor,
      strategy: :one_for_one, # an Atom...each process monitored is independent and is restarted,
      # restart all, only restart only processes that follows
    ]

    Supervisor.start_link(children, options)
  end


end
