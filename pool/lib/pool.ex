defmodule Pool do
  @moduledoc """
  Documentation for Pool.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Pool.hello()
      :world

  """
  def hello do
    HTTPoison.get("http://localhost:4001/hello", [], recv_timeout: 10_000, hackney: [pool: :test_pool])
  end

  def chris do
    HTTPoison.get("https://keathley.io", [], hackney: [pool: :test_pool])
  end
end
