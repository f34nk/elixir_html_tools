defmodule MeeseeksParseBench do
  use Benchfella

  setup_all do
    contents = [
      File.read!("input/0_2k.html"),
      File.read!("input/0_5k.html"),
      # File.read!("input/0_6k.html"),
      File.read!("input/0_8k.html"),
      # File.read!("input/0_9k.html"),
      # File.read!("input/0_95k.html"),
      # File.read!("input/0_97k.html"),
      # File.read!("input/0_98k.html"),
      File.read!("input/1k.html"),

      File.read!("input/2k.html"),
      File.read!("input/2_5k.html"),
      File.read!("input/3k.html"),
      File.read!("input/5k.html"),
      File.read!("input/10k.html"),

      File.read!("input/50k.html"),
      File.read!("input/100k.html"),
      File.read!("input/150k.html"),
      File.read!("input/200k.html"),
      File.read!("input/350k.html")
    ]
    {:ok, contents}
  end

  bench "0.2k" do
    ref = bench_context
    |> Enum.at(0)
    Meeseeks.parse(ref)
  end

  bench "0.5k" do
    ref = bench_context
    |> Enum.at(1)
    Meeseeks.parse(ref)
  end

  bench "0.8k" do
    ref = bench_context
    |> Enum.at(2)
    Meeseeks.parse(ref)
  end

  bench "1k" do
    ref = bench_context
    |> Enum.at(3)
    Meeseeks.parse(ref)
  end

  bench "2k" do
    ref = bench_context
    |> Enum.at(4)
    Meeseeks.parse(ref)
  end

  bench "2.5k" do
    ref = bench_context
    |> Enum.at(5)
    Meeseeks.parse(ref)
  end

  bench "3k" do
    ref = bench_context
    |> Enum.at(6)
    Meeseeks.parse(ref)
  end

  bench "5k" do
    ref = bench_context
    |> Enum.at(7)
    Meeseeks.parse(ref)
  end

  bench "10k" do
    ref = bench_context
    |> Enum.at(8)
    Meeseeks.parse(ref)
  end

  bench "50k" do
    ref = bench_context
    |> Enum.at(9)
    Meeseeks.parse(ref)
  end

  bench "100k" do
    ref = bench_context
    |> Enum.at(10)
    Meeseeks.parse(ref)
  end

  bench "150k" do
    ref = bench_context
    |> Enum.at(11)
    Meeseeks.parse(ref)
  end

  bench "200k" do
    ref = bench_context
    |> Enum.at(12)
    Meeseeks.parse(ref)
  end

  bench "350k" do
    ref = bench_context
    |> Enum.at(13)
    Meeseeks.parse(ref)
  end

end
