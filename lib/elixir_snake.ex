defmodule ElixirSnake do
  @moduledoc """
  Documentation for ElixirSnake.
  """

  @doc """
    This is the response to Post /start 
  """
  def start(_) do 
    %{color: "#c0ffee"}
  end

  @doc """
    This is the response to Post /move
    Your snake logic should live here
  """
  def move(board) do
    move = "right"
    %{
      move: move,
      taunt: "Go Time"
    }
  end
end
