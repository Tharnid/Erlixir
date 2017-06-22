defmodule HangmanTest do
  use ExUnit.Case
  doctest Hangman

  test "the truth" do
  #   # assert 1 + 1 == 4
  #   # assert { :ok, 123 } = { :error }
     assert [ 1, 2, 3 ] == [ 1, 3, 3 ]
  end
end
