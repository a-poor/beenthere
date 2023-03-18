defmodule Beenthere.Location do
  use Ecto.Schema
  import Ecto.Changeset

  schema "locations" do
    field :action, :string
    field :description, :string
    field :name, :string
    field :tags, {:array, :string}
    field :want_to_visit, :boolean, default: false
    field :owner_id, :id

    timestamps()
  end

  @doc false
  def changeset(location, attrs) do
    location
    |> cast(attrs, [:name, :action, :want_to_visit, :tags, :description])
    |> validate_required([:name, :action, :want_to_visit, :tags, :description])
  end
end
