# Assigner

Assigner is a simple macro that allows you to assign values to variables in a pipeline.

## Usage

```elixir
use Assigner

2 + 2
|> assign(:a)

assert a == 4

# or

4 * 4
|> assign(b) # no need to initialize a variable

assert b == 16
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `assigner` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:assigner, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/assigner>.

