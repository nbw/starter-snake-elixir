defmodule ElixirSnake do
  @moduledoc """
  Documentation for ElixirSnake.
  """

  @doc """
    This is the response to Post /start 
    This is where you define your color
  """
  def start_resp(_) do 
    %{
      color: "#c0ffee",
      taunt: "I'm READY"
    }
  end

  @doc """
    This is the response to Post /move
    Your snake logic should live here
  """
  def move_resp(board) do
    move = "right"
    %{
      move: move,
      taunt: "Go Time"
    }
  end

  @doc """
    This is the response to Post /end
    This does not need to do anything
  """
  def end_resp(_) do
    ""
  end
end
