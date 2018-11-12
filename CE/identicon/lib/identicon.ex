defmodule Identicon do
  def main(input) do
    input
    |> hash_iput # sends input to hash_input
    |> pick_color
  end

  def pick_color(image) do
    # get RGB
    # red = image.hex[0]
    %Identicon.Image{hex: [r, g, b | _tail]} = image

    # return r g b
    [r, g, b ]
  end

  def hash_iput(input) do
    # convert string into unique numbers
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Identicon.Image{hex: hex}
  end
end
