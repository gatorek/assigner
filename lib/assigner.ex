defmodule Assigner do
  defmacro __using__(_opts) do
    quote do
      require Assigner
      import Assigner
    end
  end

  defmacro assign(value, var) do
    quote do
      var!(unquote({var, [], Elixir})) = unquote(value)
    end
  end
end
