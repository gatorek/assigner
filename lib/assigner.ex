defmodule Assigner do
  defmacro assign(value, var) do
    quote do
      var!(unquote({var, [], Elixir})) = unquote(value)
    end
  end
end
