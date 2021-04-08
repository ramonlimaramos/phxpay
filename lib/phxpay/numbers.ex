defmodule Phxpay.Numbers do
  def sum_from_file(filename) do
    "#{filename}.csv"
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, content}) do
    content =
      content
      |> String.split(",")
      |> Stream.map(fn number -> String.to_integer(number) end) # anon function
      |> Enum.sum()

    {:ok, %{result: content}} # tuple with map
  end

  defp handle_file({:error, _reason}), do: {:error, %{message: "No such file or directory"}}
end
