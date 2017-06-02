# Elixir Notes
---

## IEx
---

h = help

 (pound)iex:break

mix run -e {Project name}.function

iex -S mix (tell iex to run mix)

clear()

h {command}. = opens help for that particular command

## Pattern Matching
---

= does not equal assignment, but an assertion

## Read files
---

*** Binary appears all over the place ***
**Comes from Erlang and doesn't really do strings that well**
Erlang considers all string to be binary bytes or binary....but binary = string!!!

**read!**

	returns a tuple {:ok, binary } or {error, reason}

**read**

	just returns the binary

**String**

	contains slice and split...many other things as well
	
	***split/1 split/2 split/3** **Arity**
	/x number of parameters it takes
	\n = new line
	
	String.split(string, reg expresions)
	
	hd {variable} first item
	
	Enum.random(variable)
	
**FP = functions and values those functions transform**

**Lists are also part of Enum** wut?

