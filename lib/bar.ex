defmodule Bar do
  @moduledoc false

  use Absinthe.Schema.Notation

  object :bar do
    import_fields :shared

    field :fbar, :string do
      resolve fn _, _, _ -> {:ok, "fbar value"} end
    end
  end

end
