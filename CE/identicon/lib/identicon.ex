defmodule Identicon do
  def main(input) do
    input
    |> hash_iput # sends input to hash_input
    |> pick_color
    |> build_grid
  end

  def build_grid(%Identicon.Image{hex: hex} = image) do
    grid = 
      hex
      |> Enum.chunk(3)
      |> Enum.map(&mirror_row/1)
      |> List.flatten
      |> Enum.with_index

    %Identicon.Image{image | grid: grid}
  end

  def mirror_row(row) do
    # [145, 46, 200]
    [first, second | _tail] = row

    # [145, 46, 200, 46, 145]
    row ++ [second, first]
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
