defmodule AppWeb.DoesNotWorkLiveTest do
  use AppWeb.ConnCase

  test "form can be submitted", %{conn: conn} do
    conn
    |> visit(~p"/")
    |> within(~s{form[phx-submit="submit_a"]}, fn conn ->
      conn
      |> fill_in("Something", with: "abc")
      |> submit()
    end)
  end

  test "form can be submitted 2", %{conn: conn} do
    conn
    |> visit(~p"/")
    |> within("#a form", fn conn ->
      conn
      |> fill_in("Something", with: "abc")
      |> submit()
    end)
  end
end
