defmodule ElixirSaml.XML do
  # https://medium.com/@blogscot/parsing-xml-using-elixir-mostly-f1368593b0ca
  import Record, only: [defrecord: 2, extract: 2]

  defrecord :xmlElement, extract(:xmlElement, from_lib: "xmerl/include/xmerl.hrl")
  defrecord :xmlText, extract(:xmlText, from_lib: "xmerl/include/xmerl.hrl")

  def parse_xml_string(xml_string) do
    {xml, _} =
      xml_string
      |> :binary.bin_to_list()
      |> :xmerl_scan.string()

    xml
  end

  def get_value_from_path(xml_struct, xpath) do
    [title_element] = :xmerl_xpath.string(xpath, xml_struct)
    [xml_content] = xmlElement(title_element, :content)
    xmlText(xml_content, :value)
  end

  def get_cert_value_from_xml(xml_struct) do
    xpath =
      '//samlp:Response/saml:Assertion/ds:Signature/ds:KeyInfo/ds:X509Data/ds:X509Certificate'

    get_value_from_path(xml_struct, xpath)
  end
end
