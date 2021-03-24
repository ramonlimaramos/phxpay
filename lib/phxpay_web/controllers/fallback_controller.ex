defmodule PhxpayWeb.FallbackController do
  use PhxpayWeb, :controller

  def call(conn, {:error, reason}) do
    conn
    |> put_status(:bad_request)
    |> put_view(PhxpayWeb.ErrorView)
    |> render("400.json", reason: reason)
  end
end
