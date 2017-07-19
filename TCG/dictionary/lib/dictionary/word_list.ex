defmodule Dictionary.WordList do

  def start_link() do
    Agent.start_link(&word_list/0)
  end

  def random_word(agent) do # takes param I believe
    # |> Enum.random()
    Agent.get(agent, &Enum.random/1) # list of words
  end

  def word_list do
    "../../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
  end

end
