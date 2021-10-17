defmodule Guardian.Schema.OneTimeToken do
  @moduledoc false

  use Ecto.Schema

  import Ecto.Changeset
  alias Guardian.Schema.OneTimeToken

  @primary_key false

  schema "abstract_table: tokens" do
    field(:id, :string)
    field(:claims, :map, default: %{})
    field(:expiry, :utc_datetime)
  end

  def changeset(params) do
    %OneTimeToken{}
    |> cast(params, [:id, :claims, :expiry])
    |> validate_required([:id])
  end
end
