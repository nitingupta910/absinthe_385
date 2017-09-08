defmodule Absinthe385 do
  @moduledoc false

  use Application
  require Logger

  @port 9100

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    # Define workers and child supervisors to be supervised
    children = [
      Plug.Adapters.Cowboy.child_spec(:http, Router, [], port: @port)
    ]

    Logger.info fn ->
      "Started application at port #{@port}"
    end

    opts = [strategy: :one_for_one, name: Supervisor]
    Supervisor.start_link(children, opts)
  end

end
