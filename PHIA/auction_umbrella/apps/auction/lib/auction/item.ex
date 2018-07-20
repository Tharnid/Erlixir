defmodule Auction.Item do
    import Ecto.Changeset
    # defstruct [:id, :title, :description, :ends_at]
    use Ecto.Schema

    schema "items" do
        field :title, :string
        field :description, :string
        field :ends_at, :utc_datetime
        timestamps()
    end

    def changeset(item, params \\ %{}) do
        item
        |> Ecto.Changeset.cast(params, [:title, :description, :ends_at]) # passing items and params
        # setting attrs as required
        # |> Ecto.Changeset.validate_required(:title)
        # |> Ecto.Changeset.validate_length(:title, min: 3)
        |> validate_required(:title)
        |> validate_length(:title, min: 3)
        |> validate_length(:description, max: 200)
        |> validate_change(:ends_at, &validate/2)
    end

    defp validate(:ends_at, ends_at_date) do
        case NaiveDateTime.compare(ends_at_date, NaiveDateTime.utc_now()) do
            :lt -> [ends_at: "ends_at cannot be in the past"]
            _ -> []
        end
    end 
end