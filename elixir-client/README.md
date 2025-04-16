# DcApiEx

This API provides direct access to the data that drives the [Northwestern University Libraries Digital  Collections](https://dc.library.northwestern.edu) site. Please visit the [documentation](..) for more information. 

## Building

To install the required dependencies and to build the elixir project, run:

```console
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex][], the package can be installed by adding `dc_api_ex` to
your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:dc_api_ex, "~> 1.0.0"}]
end
```

Documentation can be generated with [ExDoc][] and published on [HexDocs][]. Once published, the docs can be found at
[https://hexdocs.pm/dc_api_ex][docs].

## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your
configuration files).

```elixir
config :dc_api_ex, base_url: "https://api.dc.library.northwestern.edu/api/v2"
```

Multiple clients for the same API with different URLs can be created passing different `base_url`s when calling
`DcApiEx.Connection.new/1`:

```elixir
client = DcApiEx.Connection.new(base_url: "https://api.dc.library.northwestern.edu/api/v2")
```

[exdoc]: https://github.com/elixir-lang/ex_doc
[hexdocs]: https://hexdocs.pm
[available in hex]: https://hex.pm/docs/publish
[docs]: https://hexdocs.pm/dc_api_ex
