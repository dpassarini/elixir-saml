require IEx
defmodule ElixirSamlTest do
  use ExUnit.Case
  doctest ElixirSaml

  def expected_decoded_response do
    {:ok, expected_response} = File.read("test/fixtures/decoded_response.xml")
    expected_response
  end

  def saml_encoded_response do 
    {:ok, saml_response} = File.read("test/fixtures/saml_response")
    saml_response
  end

  # test "decode" do
  #   {:ok, decoded_response} = ElixirSaml.decode(saml_encoded_response())
  #   assert expected_decoded_response() == decoded_response
  # end

  test "parse_decoded_response" do 
    list = ElixirSaml.parse_decoded_response(expected_decoded_response())
    assert 1 == list
  end
end
