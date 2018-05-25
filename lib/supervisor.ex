defmodule HaProxy.Supervisor do
  alias Servers.Server1
  alias Servers.Server2
  alias Servers.Server3
  use Application

  def start(_type, _args) do
    children = [
      Plug.Adapters.Cowboy2.child_spec(scheme: :http, plug: Server1, options: [port: 9997]),
      Plug.Adapters.Cowboy2.child_spec(scheme: :http, plug: Server2, options: [port: 9998]),
      Plug.Adapters.Cowboy2.child_spec(scheme: :http, plug: Server3, options: [port: 9999])
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
