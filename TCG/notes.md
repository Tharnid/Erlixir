# Enum.each(1..100, fun (_) -> spawn(greeter) end)

pid = spawn_link Proces, :greeter, [0] # both will die

 send pid, {:boom, :bad} (both processes now die)

 This is the core of how we get reliable systems

 { :ok, pid } = Agent.start_link(fn -> 0 end)

 Agent.get(pid, fn count -> count end)

 Agent.update(pid, fn count -> count + 1 end)

 Agent.get_and_update(pid, fn state -> { state, state +1 } end)
