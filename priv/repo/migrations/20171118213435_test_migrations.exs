defmodule GuardianOneTime.Repo.Migrations.TestMigrations do
  use Ecto.Migration

  def change do
    create table(:one_time_tokens, primary_key: false) do
      add :id, :string, primary_key: true
      add :claims, :map
      add :expiry, :utc_datetime
    end
  end
end
