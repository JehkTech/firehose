defmodule FirehoseWeb.RollController do
  use FirehoseWeb, :controller

  def index(conn, _params) do
    render(conn, "index.json")
  end
end