defmodule Dictionary do
  def hello do
    IO.puts "Hello world from Elixir!!!"
  end

  def random_word() do # takes param I believe
    Enum.random(word_list())
  end

  def word_list do
    contents = File.read!("assets/words.txt")
    list     = String.split(contents, ~r/\n/)
  end

  def random_quote do
    quote = "had we but world enough, and time"
    split_quote = String.split(quote, ",")
  end

end
