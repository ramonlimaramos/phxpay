defmodule Phxpay.Repo do
  use Ecto.Repo,
    otp_app: :phxpay,
    adapter: Ecto.Adapters.Postgres
end
