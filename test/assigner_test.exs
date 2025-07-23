defmodule AssignerTest do
  use ExUnit.Case
  doctest Assigner

  use Assigner

  test "assing a value to a variable by atom" do
    assign(1, :a)

    assert a == 1

    2 + 2
    |> assign(b) # no need to initialize a variable

    assert b == 4
  end

  test "assigning a value to a variable by variable" do
    # no need to initialize a variable
    assign(2, a)

    assert a == 2

    1..3
    |> Enum.map(& &1 + 1)
    |> assign(b)

    assert b == [2, 3, 4]
  end
end
