defmodule Phxpay.Account do
  use Ecto.Schema
  import Ecto.Changeset

  alias Phxpay.User

  # module variables
  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  @required_params [:balance, :user_id]

  schema "accounts" do
    field :balance, :decimal
    belongs_to :user, User

    timestamps()
  end

  # There are two ways to create an changeset:
  # - as new changeset creation always will start %__MODULE__{}
  # - as updatable changeset which combines the %__MODULE__ and params as used below
  # P.s: struct \\ %__MODULE__{} means whether params cames null start a new one in blank such creation
  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> check_constraint(:balance, name: :balance_must_be_positive_or_zero)
  end

end
