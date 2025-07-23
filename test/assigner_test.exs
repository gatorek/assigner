defmodule AssignerTest do
  use ExUnit.Case
  doctest Assigner

  test "assing a value to a variable by atom" do
    require Assigner
    Assigner.assign(1, :a)
    assert a == 1
  end

end
