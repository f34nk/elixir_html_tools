defmodule ParseBenchee do

  def run do
    file_0_2k = File.read!("input/0_2k.html")
    file_0_5k = File.read!("input/0_5k.html")
    file_1k = File.read!("input/1k.html")

    file_2k = File.read!("input/2k.html")
    file_5k = File.read!("input/5k.html")
    file_10k = File.read!("input/10k.html")

    file_50k = File.read!("input/50k.html")
    file_100k = File.read!("input/100k.html")
    file_200k = File.read!("input/200k.html")
    file_350k = File.read!("input/350k.html")

    Benchee.run(%{
      "0.2k Myhtmlex"    => fn ->
        Myhtmlex.decode(file_0_2k)
      end,
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

      "1k Myhtmlex"    => fn ->
        Myhtmlex.decode(file_1k)
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
      "2k Myhtmlex"    => fn ->
        Myhtmlex.decode(file_2k)
      end,
      "2k Floki"    => fn ->
        Floki.parse(file_2k)
      end,
      "2k Meeseeks"    => fn ->
        Meeseeks.parse(file_2k)
      end,
      "2k ModestEx"    => fn ->
        ModestEx.serialize(file_2k)
      end,

      "5k Myhtmlex"    => fn ->
        Myhtmlex.decode(file_5k)
      end,
      "5k Floki"    => fn ->
        Floki.parse(file_5k)
      end,
      "5k Meeseeks"    => fn ->
        Meeseeks.parse(file_5k)
      end,
      "5k ModestEx"    => fn ->
        ModestEx.serialize(file_5k)
      end,

      "10k Myhtmlex"    => fn ->
        Myhtmlex.decode(file_10k)
      end,
      "10k Floki"    => fn ->
        Floki.parse(file_10k)
      end,
      "10k Meeseeks"    => fn ->
        Meeseeks.parse(file_10k)
      end,
      "10k ModestEx"    => fn ->
        ModestEx.serialize(file_10k)
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
      "50k Myhtmlex"    => fn ->
        Myhtmlex.decode(file_50k)
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

      "100k Myhtmlex"    => fn ->
        Myhtmlex.decode(file_100k)
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

      "200k Myhtmlex"    => fn ->
        Myhtmlex.decode(file_200k)
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

      "350k Myhtmlex"    => fn ->
        Myhtmlex.decode(file_350k)
      end,
      "350k Floki"    => fn ->
        Floki.parse(file_350k)
      end,
      "350k Meeseeks"    => fn ->
        Meeseeks.parse(file_350k)
      end,
      "350k ModestEx"    => fn ->
        ModestEx.serialize(file_350k)
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