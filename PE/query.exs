people = [
  %{ name: "Han", weapon: "DL44"},
  %{ name: "Luke", weapon: "Lightsaber"},
  %{ name: "Chewbacca", weapon: "Bowcaster"},
  %{ name: "Lando", weapon: "Blaster"},
  %{ name: "Corran", weapon: "Blaster"},
  %{ name: "Greedo", weapon: "Slugthrower"},
  %{ name: "Captain Phasma", weapon: "Heavy Blaster"},
  %{ name: "Boba Fett", weapon: "Wrist Darts"}
]

for person = %{ weapon: weapon } <- people,
  weapon == "Blaster",
  do: IO.inspect person
