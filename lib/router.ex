defmodule Router do
  @moduledoc false

  use Plug.Router

  plug Plug.Parsers,
       parsers: [:urlencoded, :multipart, :json, Absinthe.Plug.Parser],
       pass: ["*/*"],
       json_decoder: Poison

  plug Absinthe.Plug.GraphiQL,
       schema: Schema

  #plug Absinthe.Plug,
  #  schema: KnowledgeGraph.Schema

  match _ do
    send_resp(conn, 404, "not found")
  end

end
