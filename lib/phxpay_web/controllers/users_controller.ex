defmodule PhxpayWeb.UsersController do
  use PhxpayWeb, :controller

  alias Phxpay.User

  action_fallback PhxpayWeb.FallbackController

  def create(conn, params) do

    # WITH is like a pattern match, when matches occured executes the statement
    # when not return it to who call the function which in this case Phoenix Framework
    with {:ok, %User{} = user} <- Phxpay.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end

end
