defmodule ElixirSaml.XML do
  # https://medium.com/@blogscot/parsing-xml-using-elixir-mostly-f1368593b0ca
  import Record, only: [defrecord: 2, extract: 2]
  
  defrecord :xmlElement, extract(:xmlElement, from_lib: "xmerl/include/xmerl.hrl")
  defrecord :xmlText, extract(:xmlText, from_lib: "xmerl/include/xmerl.hrl")

  def parse_xml_string(xml_string) do
    { xml, _ } = xml_string 
    |> :binary.bin_to_list 
    |> :xmerl_scan.string
    xml
  end

  def get_value_from_path(xml_struct, xpath) do 
    :xmerl_xpath.string(xpath, xml_struct)
  end
end