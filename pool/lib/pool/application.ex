defmodule Pool.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
    ]

    :hackney_pool.start_pool(:test_pool, [timeout: 15_000, max_connections: 2])

    opts = [strategy: :one_for_one, name: Pool.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
