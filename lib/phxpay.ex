defmodule Phxpay do
  alias Phxpay.Users.Create, as: UserCreate
  defdelegate create_user(params), to: UserCreate, as: :call
end
