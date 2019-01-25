defmodule Songs.SongController do
  use Songs.Web, :controller

  def new(conn, params) do
    IO.puts "++++"
    IO.inspect conn
    IO.puts "++++"
    IO.inspect params  
    IO.puts "++++"
  end
end
