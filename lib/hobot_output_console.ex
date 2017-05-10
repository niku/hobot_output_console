defmodule Hobot.Output.Console do
  @moduledoc """
  Documentation for Hobot.Output.Console.
  """

  use GenServer

  def start_link(args, options \\ [])
  def start_link(topics, options) when is_list(topics) do
    GenServer.start_link(__MODULE__, topics, options)
  end
  def start_link(topic, options) do
    GenServer.start_link(__MODULE__, [topic], options)
  end

  def init(topics) do
    for topic <- topics, do: Hobot.subscribe(topic)
    {:ok, topics}
  end

  def handle_cast({:broadcast, topic, data}, topics) do
    IO.inspect {topic, data}
    {:noreply, topics}
  end

  def terminate(reason, topics) do
    for topic <- topics, do: Hobot.subscribe(topic)
    reason
  end
end
