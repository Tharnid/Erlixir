defmodule Identicon do
  def main(input) do
    input
    |> hash_iput # sends input to hash_input
  end

  def hash_iput(input) do
    # convert string into unique numbers
    :crypto.hash(:md5, input)
    |> :binary.bin_to_list
  end
end
