defmodule FirehoseWeb.RollJSON do
  # use FirehoseWeb, :view

  use FirehoseWeb.Views.RollDef

  def render("index.json", %{roll: roll}) do
    %{data: 'render_one', roll: roll}
  end


  def render("roll.json", %{roll: %{die: die, value: num}} ) when is_integer(num) do
    %{die: die, value: num}
  end

  def render("roll.json", %{roll: %{value: num}} ) when is_integer(num) do
    %{value: num}
  end

  def render("roll.json", _), do: %{status: "error"}

  def render("show.json", %{rolls: rolls}) do
    IO.inspect(rolls, label: "rolls")
    %{data: 'render_many(rolls)'}
  end
end
