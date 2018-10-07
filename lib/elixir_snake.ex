defmodule ElixirSnake do
  @moduledoc """
  This is where you define the logic of your battlesnake!
  """

  @doc """
    This is the response to Post /start 
    This is where you define your color
  """
  def start_resp(start_request) do 
    IO.inspect(start_request)
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
    IO.inspect(board)
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
  def end_resp(end_request) do
    IO.inspect(end_request)
    %{}
  end
end
