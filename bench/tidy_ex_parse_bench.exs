defmodule TidyExParseBench do
  use Benchfella

  @worker "deps/tidy_ex/priv/tidy_worker"

  setup_all do
    Nodex.Distributed.up
    {:ok, _pid} = Nodex.Cnode.start_link(%{exec_path: @worker}, name: TidyEx.Safe.Cnode)
    contents = [
      File.read!("input/0_2k.html"),
      File.read!("input/0_5k.html"),
      File.read!("input/1k.html"),

      File.read!("input/2k.html"),
      File.read!("input/5k.html"),
      File.read!("input/10k.html"),

      File.read!("input/50k.html"),
      File.read!("input/100k.html"),
      File.read!("input/200k.html"),

      # File.read!("input/350k.html")
    ]
    {:ok, contents}
  end

  bench "0.2k" do
    ref = bench_context
    |> Enum.at(0)
    TidyEx.parse(ref)
  end

  bench "0.5k" do
    ref = bench_context
    |> Enum.at(1)
    TidyEx.parse(ref)
  end

  bench "1k" do
    ref = bench_context
    |> Enum.at(2)
    TidyEx.parse(ref)
  end

  bench "2k" do
    ref = bench_context
    |> Enum.at(3)
    TidyEx.parse(ref)
  end

  bench "5k" do
    ref = bench_context
    |> Enum.at(4)
    TidyEx.parse(ref)
  end

  bench "10k" do
    ref = bench_context
    |> Enum.at(5)
    TidyEx.parse(ref)
  end

  bench "50k" do
    ref = bench_context
    |> Enum.at(6)
    TidyEx.parse(ref)
  end

  bench "100k" do
    ref = bench_context
    |> Enum.at(7)
    TidyEx.parse(ref)
  end

  bench "200k" do
    ref = bench_context
    |> Enum.at(8)
    TidyEx.parse(ref)
  end

  # bench "350k" do
  #   ref = bench_context
  #   |> Enum.at(9)
  #   TidyEx.parse(ref)
  # end

end

