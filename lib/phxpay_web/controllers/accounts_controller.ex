defmodule PhxpayWeb.AccountsController do
  use PhxpayWeb, :controller

  alias Phxpay.Account

  action_fallback PhxpayWeb.FallbackController

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- Phxpay.deposit(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end

  def withdraw(conn, params) do
    with {:ok, %Account{} = account} <- Phxpay.withdraw(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end

end
