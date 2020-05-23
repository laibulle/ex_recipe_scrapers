defmodule RecipeScrapers.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    Agent.start_link(fn -> %{} end, name: __MODULE__)
  end
end
