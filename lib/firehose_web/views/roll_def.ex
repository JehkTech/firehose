defmodule FirehoseWeb.Views.RollDef do
  defmacro __using__(_opts) do
    quote do

      def render_one("roll.json", __MODULE__) do
      end

      def render_many("roll.json", __MODULE__) do
      end
    end
  end
end