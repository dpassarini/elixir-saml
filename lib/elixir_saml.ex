defmodule ElixirSaml do
  @moduledoc """
  Documentation for ElixirSaml.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirSaml.hello
      :world

  """
  def hello do
    :world
  end

  def decode(saml_response) do
    String.replace(saml_response, "\n", "")
    |> Base.decode64
  end

  def parse_decoded_response(xml_string) do
    :binary.bin_to_list(xml_string)
    |> :xmerl_scan.string
  end
end
