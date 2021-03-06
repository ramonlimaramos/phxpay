defmodule PhxpayWeb.AccountsView do

  alias Phxpay.{User, Account}

  def render("update.json", %{account: %Account{id: account_id, balance: balance}}) do
    %{
      message: "Balance changed successfully",
      account: %{
        account_id: account_id,
        balance: balance
      }
    }
  end
end
