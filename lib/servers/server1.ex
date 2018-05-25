defmodule Servers.Server1 do
  use Plug.Router

  plug :match
  plug :dispatch



  get "/" do
    send_resp(conn, 200, "<b>Server1</b1>")
  end

  match _ do
    send_resp(conn, 404, "Not found")
  end
end
