defmodule CredoTest.Type do
  defmacro one, do: 1
end

defmodule CredoTest.UseType do
  require CredoTest.Type
  alias CredoTest.Type

  def test(%{one: Type.one}) do
    IO.inspect("hi")
  end
end
