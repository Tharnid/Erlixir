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

**Functional program the translation from one value to another**

**Lists are also part of Enum** wut?

**Elixir Types**
---
	**Atoms** are constanst used to name things
	
	Sigils 
	
	~c//	~C//	list of character codes
	~r//	~R//	regular expression
	~s//	~S//	string
	~w//	~W//	list of words
	
	str = "once upon a time"
	
	str =~ ~r/u..n/
	
	str =~ ~r/u..m/
	
	~c//	~C//	list of character codes
~r//	~R//	regular expression
~s//	~S//	string
~w//	~W//	list of words
	
	
**Tuples**

**Maps**

	name = %{ }

**LISTS ARE NOT ARRAYS!!!**

***Pattern Matching is critical to Elixir Programming***

	^ (pin operator) elixir will not rebind its value
	
	
**Elixir List is Just A Pattern**

	Lists are immutable and can never change
	
	[ a | b ] = [ 1, 2, 3 ] 
	
	[ a. a1 | b ] = [ 1, 2, 3 ]  (a1 = 2)
	
	[a, a1, a2 | b ] = [ 1, 2, 3 ] (b is empty list)
	
	[a, a1, a2, a3 | b ] = [ 1, 2, 3 ] (looking for head with 4 elements)
	
	Functions and Pattern matching
	
	c "name.exs" in terminal
	
	def len([h|t]), do: 1 + len(t) length of tail recursively
	
	Lists.map([1,2,3], &(&1*&1*&1))
	
**Mix.exs is like a config file for application**

(__DIR__)
	