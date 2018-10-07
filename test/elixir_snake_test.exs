defmodule ElixirSnakeTest do
  use ExUnit.Case
  doctest ElixirSnake

  test "responds to start request" do
    start_resp = ElixirSnake.start_resp(1)
    assert is_map(start_resp)
  end

  test "start response has color property" do
    start_resp = ElixirSnake.start_resp(1)
    assert Map.has_key?(start_resp, :color)
  end

  test "responds to move request" do
    move_resp = ElixirSnake.move_resp(1)
    assert is_map(move_resp)
  end

  test "move response has move property" do
    move_resp = ElixirSnake.move_resp(1)
    assert Map.has_key?(move_resp, :move)
  end

end
