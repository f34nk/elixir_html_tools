defmodule ParseBench do

  def run do
    file_0_2k = File.read!("input/0_2k.html") # 0.file_2k
    file_0_5k = File.read!("input/0_5k.html") # 0.5k
    file_1k = File.read!("input/1k.html") # file_1k
    file_2k = File.read!("input/2k.html") # file_2k
    file_2_5k = File.read!("input/2_5k.html") # 2.5k
    file_3k = File.read!("input/3k.html") # 3k
    file_5k = File.read!("input/5k.html") # 5k
    file_10k = File.read!("input/10k.html") # 10k

    file_50k = File.read!("input/50k.html") # 50k
    file_100k = File.read!("input/100k.html") # 100k
    file_150k = File.read!("input/150k.html") # 150k
    file_200k = File.read!("input/100k.html") # 200k

    github_trending_js = File.read!("input/github_trending_js.html") # 341k

    Benchee.run(%{
      "0.2k Floki"    => fn ->
        Floki.parse(file_0_2k)
      end,
      "0.2k Meeseeks"    => fn ->
        Meeseeks.parse(file_0_2k)
      end,
      "0.2k ModestEx"    => fn ->
        ModestEx.serialize(file_0_2k)
      end,

      "0.5k Floki"    => fn ->
        Floki.parse(file_0_5k)
      end,
      "0.5k Meeseeks"    => fn ->
        Meeseeks.parse(file_0_5k)
      end,
      "0.5k ModestEx"    => fn ->
        ModestEx.serialize(file_0_5k)
      end,

      "1k Floki"    => fn ->
        Floki.parse(file_1k)
      end,
      "1k Meeseeks"    => fn ->
        Meeseeks.parse(file_1k)
      end,
      "1k ModestEx"    => fn ->
        ModestEx.serialize(file_1k)
      end
    },
      formatters: [
        Benchee.Formatters.HTML,
        Benchee.Formatters.Console,
        # Benchee.Formatters.CSV
      ],
      formatter_options: [
        html: [file: "output/parse_small.html", auto_open: false],
        # csv: [file: "output/parse_small.csv"]
      ]
    )

    Benchee.run(%{
      "2k Floki"    => fn ->
        Floki.parse(file_2k)
      end,
      "2k Meeseeks"    => fn ->
        Meeseeks.parse(file_2k)
      end,
      "2k ModestEx"    => fn ->
        ModestEx.serialize(file_2k)
      end,

      "2.5k Floki"    => fn ->
        Floki.parse(file_2_5k)
      end,
      "2.5k Meeseeks"    => fn ->
        Meeseeks.parse(file_2_5k)
      end,
      "2.5k ModestEx"    => fn ->
        ModestEx.serialize(file_2_5k)
      end,

      "3k Floki"    => fn ->
        Floki.parse(file_3k)
      end,
      "3k Meeseeks"    => fn ->
        Meeseeks.parse(file_3k)
      end,
      "3k ModestEx"    => fn ->
        ModestEx.serialize(file_3k)
      end,

      "5k Floki"    => fn ->
        Floki.parse(file_5k)
      end,
      "5k Meeseeks"    => fn ->
        Meeseeks.parse(file_5k)
      end,
      "5k ModestEx"    => fn ->
        ModestEx.serialize(file_5k)
      end
    },
      formatters: [
        Benchee.Formatters.HTML,
        Benchee.Formatters.Console,
        # Benchee.Formatters.CSV
      ],
      formatter_options: [
        html: [file: "output/parse_mid.html", auto_open: false],
        # csv: [file: "output/parse_mid.csv"]
      ]
    )

    Benchee.run(%{
      "10k Floki"    => fn ->
        Floki.parse(file_10k)
      end,
      "10k Meeseeks"    => fn ->
        Meeseeks.parse(file_10k)
      end,
      "10k ModestEx"    => fn ->
        ModestEx.serialize(file_10k)
      end,

      "50k Floki"    => fn ->
        Floki.parse(file_50k)
      end,
      "50k Meeseeks"    => fn ->
        Meeseeks.parse(file_50k)
      end,
      "50k ModestEx"    => fn ->
        ModestEx.serialize(file_50k)
      end,

      "100k Floki"    => fn ->
        Floki.parse(file_100k)
      end,
      "100k Meeseeks"    => fn ->
        Meeseeks.parse(file_100k)
      end,
      "100k ModestEx"    => fn ->
        ModestEx.serialize(file_100k)
      end,

      "150k Floki"    => fn ->
        Floki.parse(file_150k)
      end,
      "150k Meeseeks"    => fn ->
        Meeseeks.parse(file_150k)
      end,
      "150k ModestEx"    => fn ->
        ModestEx.serialize(file_150k)
      end,

      "200k Floki"    => fn ->
        Floki.parse(file_200k)
      end,
      "200k Meeseeks"    => fn ->
        Meeseeks.parse(file_200k)
      end,
      "200k ModestEx"    => fn ->
        ModestEx.serialize(file_200k)
      end,

      "341k Floki"    => fn ->
        Floki.parse(github_trending_js)
      end,
      "341k Meeseeks"    => fn ->
        Meeseeks.parse(github_trending_js)
      end,
      "341k ModestEx"    => fn ->
        ModestEx.serialize(github_trending_js)
      end
    },
      formatters: [
        Benchee.Formatters.HTML,
        Benchee.Formatters.Console,
        # Benchee.Formatters.CSV
      ],
      formatter_options: [
        html: [file: "output/parse_big.html", auto_open: false],
        # csv: [file: "output/parse_big.csv"]
      ]
    )
  end
end