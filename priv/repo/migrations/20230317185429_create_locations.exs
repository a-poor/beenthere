defmodule Beenthere.Repo.Migrations.CreateLocations do
  use Ecto.Migration

  def change do
    create table(:locations) do
      add :name, :string
      add :action, :string
      add :want_to_visit, :boolean, default: false, null: false
      add :tags, {:array, :string}
      add :description, :string
      add :owner_id, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:locations, [:owner_id])
  end
end
