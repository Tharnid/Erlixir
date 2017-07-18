defmodule Procs do

  def greeter(count) do
    receive do
        { :add, n } ->
          greeter(count + n)
      msg ->
        # IO.puts "Hello #{inspect msg}"
        IO.puts "#{count}: Hello #{inspect msg}}"
        greeter(count)
    end
    # Process.sleep(1000)
    # greeter(count + 2)
  end

end

# spawn Procs, :greeter, [ "world" ]

# when you exit the pid dies
