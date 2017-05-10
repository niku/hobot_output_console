# Hobot.Output.Console

An output plugin which writes messages to a console for hobot

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `hobot_output_console` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:hobot_output_console, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/hobot_output_console](https://hexdocs.pm/hobot_output_console).

## Usage

You can show messages which you subscribed topics.

```
% git clone https://github.com/niku/hobot_output_console.git
% cd hobot_output_console
hobot_output_console% mix deps.get
hobot_output_console% iex -S mix
iex(1)> {:ok, pid} = Hobot.Output.Console.start_link("a_topic")
{:ok, #PID<0.243.0>}
iex(2)> # Publish a message
nil
iex(3)> Hobot.publish("a_topic", "hello~")
{"a_topic", "hello~"}
:ok
```
