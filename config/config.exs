# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config
config :elixir_saml, 
  # idp data
  idp_entityid: "https://app.onelogin.com/saml/metadata/742372",
  idp_x509cert: "MIIEGjCCAwKgAwIBAgIUVcNFSSPL26SgnF8KPZeu53vMxWwwDQYJKoZIhvcNAQEF
  BQAwWTELMAkGA1UEBhMCVVMxETAPBgNVBAoMCFBlcnNvbmFsMRUwEwYDVQQLDAxP
  bmVMb2dpbiBJZFAxIDAeBgNVBAMMF09uZUxvZ2luIEFjY291bnQgMTIwMTkwMB4X
  DTE4MDEwNDE3NTYyMloXDTIzMDEwNDE3NTYyMlowWTELMAkGA1UEBhMCVVMxETAP
  BgNVBAoMCFBlcnNvbmFsMRUwEwYDVQQLDAxPbmVMb2dpbiBJZFAxIDAeBgNVBAMM
  F09uZUxvZ2luIEFjY291bnQgMTIwMTkwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A
  MIIBCgKCAQEA0EbJcCHPcQsyHANRCYvf9q0vDZ8d2tFoLkkNkh7418m4ldwg2fLg
  t5eus6TBeOoazFpB5fGhCdEOQHzIz2YtD4fbPT9SgDS4tvznQXYoPterIISDTSX2
  8m5SGAcY9lra0eaQqqkbX7EjWlzzzuoRko8vsBxy8WoNmH9hhiarmyF6xjBycC5D
  cwzqagrrvGaubLACY/AeGd8v8aIjxlRmZbSXANStZxbMYi9ktTo4ukvRzVfjSsG7
  kbVJsv6cBNToS7BLZ/QUIRnmrLsLWViP5YhkQDpkuwDR+uIDSqUGRcLrywdDxHaR
  KfqXdtS1z9IvfVaZ2ruIvzPUswa3XqDvRQIDAQABo4HZMIHWMAwGA1UdEwEB/wQC
  MAAwHQYDVR0OBBYEFK92e6qgLor3jsbBGqXIOUPNyiXBMIGWBgNVHSMEgY4wgYuA
  FK92e6qgLor3jsbBGqXIOUPNyiXBoV2kWzBZMQswCQYDVQQGEwJVUzERMA8GA1UE
  CgwIUGVyc29uYWwxFTATBgNVBAsMDE9uZUxvZ2luIElkUDEgMB4GA1UEAwwXT25l
  TG9naW4gQWNjb3VudCAxMjAxOTCCFFXDRUkjy9ukoJxfCj2Xrud7zMVsMA4GA1Ud
  DwEB/wQEAwIHgDANBgkqhkiG9w0BAQUFAAOCAQEAJNcwfAzfsmY5dMOBichcU8PO
  1Eo/4h9lAAQPpXs0of5078ATc0apNW6dplnNlebZAUM8A42Ubxv4fI6QgSVP/rbr
  7/WW38lsZIDFV+DyZEX4K0hzLPbBZy656lE2MShkLrpK1ZPylOzMzVfNT9LhH88v
  YO/WW0sp/Jzy0SF0LkN8KaKOU3Ij0seRT6O315MFjQprPnKl0xWBfkgdAVgMJhAA
  RpdQGUFx4p9EHptaYCJrE8//ipxf0JD5DDfNQbXjKkZDiImqgXX2arMzan0dPr4f
  8M0QctyvdYjVjV9F+1qGMnL7Xk4Y7rlynG/xvxP5yNzw13yhPDwU7gkX6MsTSw==",
  idp_single_sign_on_service_binding: "urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect",
  idp_single_logout_service_url: "https://dpassarini.onelogin.com/trust/saml2/http-redirect/slo/742372",
  idp_single_sign_on_service_url: "https://dpassarini.onelogin.com/trust/saml2/http-post/sso/742372"



# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure your application as:
#
#     config :elixir_saml, key: :value
#
# and access this configuration in your application as:
#
#     Application.get_env(:elixir_saml, :key)
#
# You can also configure a 3rd-party app:
#
#     config :logger, level: :info
#

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env}.exs"
