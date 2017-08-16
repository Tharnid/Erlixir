defmodule Hangman2.Application do

  use Application

  def start(_type, _args) do

    import Supervisor.Spec

    children = [
      worker(Hangman2.Server, []),
    ]

    options = [
      name: Hangman2. Supervisor,
      strategy: :simple_one_for_one,
      # does not start any children...just
      # remember specifications for child
    ]

    Supervisor.start_link(children, options)
  end

end
