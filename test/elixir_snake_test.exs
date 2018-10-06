defmodule ElixirSnakeTest do
  use ExUnit.Case
  doctest ElixirSnake

  test "greets the world" do
    assert ElixirSnake.hello() == :world
  end
end
