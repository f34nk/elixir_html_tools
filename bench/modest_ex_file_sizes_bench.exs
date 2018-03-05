defmodule ModestExFileSizesBench do
  use Benchfella

  setup_all do
    Nodex.Distributed.up
    {:ok, _pid} = Nodex.Cnode.start_link(%{exec_path: "deps/modest_ex/priv/modest_client"}, name: ModestEx.Safe.Cnode)
    contents = {
      File.read!("bench/input/github_trending_js.html"),
      File.read!("bench/input/w3c_html5.html"),
      File.read!("bench/input/wikipedia_hyperlink.html")
    }
    {:ok, contents}
  end

  bench "github_trending_js.html 341k" do
    {ref, _, _} = bench_context
    ModestEx.Serialize.serialize(ref)
  end

  bench "w3c_html5.html 131k" do
    {_, ref, _} = bench_context
    ModestEx.Serialize.serialize(ref)
  end

  bench "wikipedia_hyperlink.html 97k" do
    {_, _, ref} = bench_context
    ModestEx.Serialize.serialize(ref)
  end

end

