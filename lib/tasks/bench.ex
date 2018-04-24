defmodule Mix.Tasks.Bench do
  use Mix.Task

  # @worker "deps/modest_ex/priv/modest_client"
  # @worker "deps/modest_ex/priv/modest_worker"
  @worker "../modest_ex/priv/modest_worker"

  @shortdoc "Run benchmarks."
  def run(_) do
    Nodex.Distributed.up
    {:ok, _pid} = Nodex.Cnode.start_link(%{exec_path: @worker}, name: ModestEx.Safe.Cnode)

    ParseBench.run()
    # FindBench.run()
    
  end
end