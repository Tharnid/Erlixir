defmodule Identicon do
  def main(input) do
    input
    |> hash_iput # sends input to hash_input
    |> pick_color
    |> build_grid
  end


  def build_grid(%Identicon.Image{hex: hex} = image) do
    hex
    |> Enum.chunk(3)
    # |> mirror_row
  end

  def pick_color(%Identicon.Image{hex: [r, g, b | _tail]} = image) do
    # get RGB
    # red = image.hex[0]
    # %Identicon.Image{hex: [r, g, b | _tail]} = image
    %Identicon.Image{image | color: {r, g, b}} # use tuple when each element has meaning
  end

  def hash_iput(input) do
    # convert string into unique numbers
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Identicon.Image{hex: hex}
  end
end
