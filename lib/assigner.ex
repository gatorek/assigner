defmodule Assigner do
  defmacro __using__(_opts) do
    quote do
      require Assigner
      import Assigner
    end
  end

  defmacro assign(value, var) do
    case var do
      {name, meta, context} when is_atom(name) and is_list(meta) and is_atom(context) ->
        assign_by_variable(value, var)

      var when is_atom(var) ->
        assign_by_atom(value, var)

      _ ->
        raise(ArgumentError, "expected second parameter to be an atom or a variable, got: #{inspect(var)}")
    end
  end

  defp assign_by_atom(value, var) do
    quote do
      var!(unquote({var, [], Elixir})) = unquote(value)
    end
  end

  defp assign_by_variable(value, var) do
    quote do
      var!(unquote(var)) = unquote(value)
    end
  end
end
