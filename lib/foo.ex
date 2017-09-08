defmodule Foo do
  @moduledoc false

  use Absinthe.Schema.Notation

  object :foo do
    import_fields :shared

    field :ffoo, :string do
      resolve fn _, _, _ -> {:ok, "ffoo value"} end
    end
  end

end
