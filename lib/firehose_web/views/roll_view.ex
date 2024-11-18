defmodule FirehoseWeb.RollJSON do
  # use FirehoseWeb, :view

  def render_one("roll.json", __MODULE__) do
  end

  def render("index.json", %{roll: roll}) do
    %{data: 'render_one', roll: roll}
  end


  def render("roll.json", %{roll: %{value: num}} ) when is_integer(num) do
    %{value: num}
  end

  def render("roll.json", _), do: %{status: "error"}
end
