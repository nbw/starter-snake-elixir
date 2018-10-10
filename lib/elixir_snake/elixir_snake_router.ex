defmodule ElixirSnake.Router do
  use Plug.Router
  use Plug.Debugger
  require Logger

  plug(Plug.Logger, log: :debug)

  plug(:match)
  plug(:dispatch)

  # Routes!
  get "/" do
    send_resp(conn, 200, "This is the home of a battlesnake built with Elixir, please visit battlesnake.io to learn more")
  end

  post "/start" do
    {:ok, body, conn} = read_body(conn)
    body = Poison.decode!(body)
    start_response = ElixirSnake.start_resp(body)

    send_resp(conn, 200, Poison.encode!(start_response))
  end

  post "/move" do
    {:ok, body, conn} = read_body(conn)
    body = Poison.decode!(body)
    move_response = ElixirSnake.move_resp(body)

    send_resp(conn, 200, Poison.encode!(move_response))
  end

  post "/end" do
    {:ok, body, conn} = read_body(conn)
    body = Poison.decode!(body)
    end_response = ElixirSnake.end_resp(body)

    send_resp(conn, 200, Poison.encode!(end_response))
  end

  post "/ping" do
    {:ok, _, conn} = read_body(conn)

    send_resp(conn, 200, %{})
  end

  match _ do
    send_resp(conn, 404, "not found")
  end
end
