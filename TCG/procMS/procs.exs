defmodule Procs do

  def greeter() do
    receive do
      msg ->
        IO.puts "Hello #{inspect msg}"
    end
    # Process.sleep(1000)
    greeter()
  end

end

# spawn Procs, :greeter, [ "world" ]

# when you exit the pid dies
