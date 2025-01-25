defmodule AppWeb.WorksLiveTest do
  use AppWeb.ConnCase

  test "form can be submitted", %{conn: conn} do
    conn
    |> visit(~p"/works")
    |> within(~s{form[phx-submit="submit_a"]}, fn conn ->
      conn
      |> fill_in("Something", with: "abc")
      |> submit()
    end)
  end
end
