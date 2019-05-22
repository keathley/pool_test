defmodule PoolTest.Application do
  @moduledoc false

  use Application

  alias PoolTest.Router

  def start(_type, _args) do
    children = [
      Plug.Cowboy.child_spec(scheme: :http, plug: Router, options: [port: 4001])
    ]

    opts = [strategy: :one_for_one, name: PoolTest.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
