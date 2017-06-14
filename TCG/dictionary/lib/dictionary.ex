defmodule Dictionary do
  def hello do
    IO.puts "Hello world from Elixir!!!"
  end

  def random_word() do # takes param I believe
    #Enum.random(word_list())
    word_list()
    |> Enum.random()
  end

  def word_list do
    "../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
  end

  # def random_quote do
  #   quote = "had we but world enough, and time"
  #   split_quote = String.split(quote, ",")
  # end

end
