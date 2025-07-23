defmodule AssignerTest do
  use ExUnit.Case
  doctest Assigner

  use Assigner

  test "assing a value to a variable by atom" do
    assign(1, :a)
    assert a == 1

    2 + 2
    |> assign(:b)
    assert b == 4
  end
end
