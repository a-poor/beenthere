defmodule Beenthere.Repo do
  use Ecto.Repo,
    otp_app: :beenthere,
    adapter: Ecto.Adapters.Postgres
end
