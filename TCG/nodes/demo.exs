defmodule Demo do

  def reverse do
    receive do
      # msg ->
      #   result = msg |> String.reverse
      #   IO.puts result
      #   reverse()
      { from_pid, msg } ->
        # inspect pid
        IO.inspect from_pid
        result = msg |> String.reverse
        send from_pid, result
        reverse()
    end
  end

end
