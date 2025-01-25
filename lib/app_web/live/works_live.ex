defmodule AppWeb.WorksLive do
  use AppWeb, :live_view

  def render(assigns) do
    ~H"""
    <.form for={@form_a} phx-submit="submit_a" id="a">
      <.input field={@form_a[:something]} label="Something" />
      <button>submit</button>
    </.form>

    <!-- One form can be without id  -->
    <.form for={@form_b} phx-submit="submit_b">
      <.input field={@form_b[:something]} label="Something" />
      <button>submit</button>
    </.form>
    """
  end

  def mount(_params, _session, socket) do
    socket =
      assign(socket,
        form_a: to_form(%{}, as: "a"),
        form_b: to_form(%{}, as: "b")
      )

    {:ok, socket}
  end

  def handle_event("submit_a", _params, socket) do
    {:noreply, socket}
  end

  def handle_event("submit_b", _params, socket) do
    {:noreply, socket}
  end
end
