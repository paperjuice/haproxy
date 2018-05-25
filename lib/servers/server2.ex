defmodule Servers.Server2 do
  use Plug.Router

  plug :match
  plug :dispatch



  get "/" do
    send_resp(conn, 200, "<b>Server2</b1>")
  end

  match _ do
    send_resp(conn, 404, "Not found")
  end
end
