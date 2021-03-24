defmodule PhxpayWeb.UsersView do

  alias Phxpay.{User, Account}

  def render("create.json", %{user: %User{id: id, name: name, nickname: nickname, account: %Account{id: account_id, balance: balance}}}) do
    %{
      message: "User created",
      user: %{
        id: id,
        name: name,
        nickname: nickname,
        account: %{
          account_id: account_id,
          balance: balance
        }
      }
    }
  end
end
