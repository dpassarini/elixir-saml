# require IEx
defmodule ElixirSaml.XmlTest do
  use ExUnit.Case

  def expected_decoded_response do
    {:ok, expected_response} = File.read("test/fixtures/decoded_response.xml")
    expected_response
  end

  def cert_content do
    {:ok, cert_value} = File.read("test/fixtures/valid_x509_cert")
    cert_value
  end

  test "get cert value from xml" do
    xml_doc = ElixirSaml.XML.parse_xml_string(expected_decoded_response())
    cert = ElixirSaml.XML.get_cert_value_from_xml(xml_doc)
    assert String.to_charlist(cert_content()) == cert
  end
end
