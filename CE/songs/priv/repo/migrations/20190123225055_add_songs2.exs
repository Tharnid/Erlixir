defmodule Songs.Repo.Migrations.AddSongs2 do
  use Ecto.Migration

  def change do
    create table(:songs) do
      add :title, :string
      add :artist, :string      
    end
  end
end
