defmodule Phxpay.NumbersTest do
  use ExUnit.Case

  alias Phxpay.Numbers

  describe "sum_from_file/1" do
    test "when theres a file with the given name, return sum of numbers" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 200}}

      assert response == expected_response
    end

    test "when theres a file with the given name, return error" do
      response = Numbers.sum_from_file("wrongfile")

      expected_response = {:error, %{message: "No such file or directory"}}

      assert response == expected_response
    end
  end

end
