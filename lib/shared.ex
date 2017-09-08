defmodule Shared do
  @moduledoc false

  use Absinthe.Schema.Notation

  object :shared do
    field :id, :id

    field :fshared, :string do
      resolve fn _, _, _ -> {:ok, "fshared value"} end
    end
  end

end
