# Enum.each(1..100, fun (_) -> spawn(greeter) end)

pid = spawn_link Proces, :greeter, [0] # both will die

 send pid, {:boom, :bad} (both processes now die)

 This is the core of how we get reliable systems 
