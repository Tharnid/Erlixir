defmodule Auction do
    alias Auction.{Repo, Item}

    # @repo FakeRepo # constant syntax
    # @repo Auction.Repo
    @repo Repo

    def list_items do
        @repo.all(Item)
    end

    def get_item(id) do
        @repo.get!(Item, id)
    end

    def get_item_by(attrs) do
        @repo.get_by(Item, attrs)
    end

  def insert_item(attrs) do
    %Item{}
    |> Item.changeset(attrs)
    |> @repo.insert()
  end

    def update_item(%Auction.Item{} = item, updates) do
        item
        |> Item.changeset(updates)
        |> @repo.update()
    end

    # delete
    def delete_item(%Auction.Item{} = item), do: @repo.delete(item)

    def new_item , do: Item.changeset(%Item{})

    def edit_item(id) do
        @repo.get!(Item, id)
        |> Item.changeset()
    end
end
