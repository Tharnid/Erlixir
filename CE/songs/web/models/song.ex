defmodule Songs.Song do
   use Songs.Web, :model # relate phx app to what is in the db

   schema "songs" do
      field :title, :string
      field :artist, :string
   end

   # validation code
   def changeset(struct, params \\ %{}) do
      struct # hash that contains some data
      |> cast(params, [:title, :artist]) # new props to update model
      |> validate_required([:title, :artist])
   end
end