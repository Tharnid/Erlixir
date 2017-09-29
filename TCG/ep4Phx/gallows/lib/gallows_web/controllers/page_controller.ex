defmodule GallowsWeb.PageController do
  use GallowsWeb, :controller

  def index(conn, _params) do
    # my_assigns = [ produce: "orange", count: 3 ]
    my_assigns = %{ produce: "date", count: 3 }
    render conn, "index.html", my_assigns
    #, produce: "orange", count: 3
  end
end
