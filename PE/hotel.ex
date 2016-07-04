people = [
  %{ name: "Grumpy", height: 1.24 },
  %{ name: "Sleepy", height: 1.54 },
  %{ name: "Sneezy", height: 2.24 },
  %{ name: "Happy", height: 2.02 },
  %{ name: "Shorty", height: 1.14 },
  %{ name: "Dopey", height: 1.88 }
]

defmodule HotelRoom do

  def book(%{name: name, height: height })
  when height > 1.9 do
    IO.puts "Need extra long bed for #{name}"
  end

  def book(%{name: name, height: height })
  when height < 1.3 do
    IO.puts "Need low shower controls for #{name}"
  end

  def book(person) do
    IO.puts "Need regular bed for #{person.name}"
  end


end
