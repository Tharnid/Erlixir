defmodule Chain do

  defstruct [
    next_node: nil,
    count: 4
  ]

  def start_link(next_node) do
    # MFA Module Function
    spawn_link(Chain, :message_loop, [ %Chain { next_node: next_node } ])
    |> Process.register(:chainer)
  end

  def message_loop(%{ count: 0}) do
    IO.puts "done"
  end

  def message_loop(state) do
    receive do
      { :trigger, list } ->
        IO.inspect list
        :timer.sleep 500
        send { :chainer, state.next_node }, # remote pid..name followed by node name
        { :trigger, [ node() | list ] }
    end
    message_loop(%{ state | count: state.count - 1 })
  end

end
