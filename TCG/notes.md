# Enum.each(1..100, fun (_) -> spawn(greeter) end)

pid = spawn_link Proces, :greeter, [0] # both will die

 send pid, {:boom, :bad} (both processes now die)

 This is the core of how we get reliable systems

 { :ok, pid } = Agent.start_link(fn -> 0 end)

 Agent.get(pid, fn count -> count end)

 Agent.update(pid, fn count -> count + 1 end)

 Agent.get_and_update(pid, fn state -> { state, state +1 } end)

 # Nanny(supervisors) can look after processes and other supervisors

# Gen Server
---

- Key part of Erlang OTP
- Abstraction of generic Server
- 2 sets of API's

Genserver.call(pid, { :make_move, "a"})

# New call
Hangman2.make_move(g1, "a")

# latest call
Hangman2.make_move("g")
