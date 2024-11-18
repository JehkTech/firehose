defmodule FirehoseWeb.RollController do
  use FirehoseWeb, :controller

  def index(conn, _params) do
    num = :rand.uniform(10)
    render(conn, "index.json", roll: %{value: num})
  end
end