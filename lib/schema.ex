defmodule Schema do
  @moduledoc false

  use Absinthe.Schema

  import_types Shared
  import_types Foo
  import_types Bar

  query do
    field :foo, :foo do
      
      resolve fn args, _ -> {:ok, args} end
    end

    field :bar, :bar do
      
      resolve fn args, _ -> {:ok, args} end
    end
  end
  
end
