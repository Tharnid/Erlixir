defmodule Echoer do
    def echo(msg) do
        IO.puts "#{msg} ...#{msg}......#{msg}"
    end
end

# combine functions Greeter.greet("Me") |> Echoer.echo

# relative path || iex(1)> c("../greeter.ex")

# full path || iex(2)> c("/home/user/echoer.ex")