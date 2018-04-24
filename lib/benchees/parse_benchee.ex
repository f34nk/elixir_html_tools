defmodule ParseBenchee do

  def run do
    file_0_2k = File.read!("input/0_2k.html")
    file_0_5k = File.read!("input/0_5k.html")
    # file_0_6k = File.read!("input/0_6k.html")
    file_0_8k = File.read!("input/0_8k.html")
    # file_0_9k = File.read!("input/0_9k.html")
    # file_0_95k = File.read!("input/0_95k.html")
    # file_0_97k = File.read!("input/0_97k.html")
    # file_0_98k = File.read!("input/0_98k.html")
    file_1k = File.read!("input/1k.html")

    file_2k = File.read!("input/2k.html")
    file_2_5k = File.read!("input/2_5k.html")
    file_3k = File.read!("input/3k.html")
    file_5k = File.read!("input/5k.html")
    file_10k = File.read!("input/10k.html")

    file_50k = File.read!("input/50k.html")
    file_100k = File.read!("input/100k.html")
    file_150k = File.read!("input/150k.html")
    file_200k = File.read!("input/200k.html")
    file_350k = File.read!("input/350k.html")

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

      # "0.6k Floki"    => fn ->
      #   Floki.parse(file_0_6k)
      # end,
      # "0.6k Meeseeks"    => fn ->
      #   Meeseeks.parse(file_0_6k)
      # end,
      # "0.6k ModestEx"    => fn ->
      #   ModestEx.serialize(file_0_6k)
      # end,

      "0.8k Floki"    => fn ->
        Floki.parse(file_0_8k)
      end,
      "0.8k Meeseeks"    => fn ->
        Meeseeks.parse(file_0_8k)
      end,
      "0.8k ModestEx"    => fn ->
        ModestEx.serialize(file_0_8k)
      end,

      # "0.9k Floki"    => fn ->
      #   Floki.parse(file_0_9k)
      # end,
      # "0.9k Meeseeks"    => fn ->
      #   Meeseeks.parse(file_0_9k)
      # end,
      # "0.9k ModestEx"    => fn ->
      #   ModestEx.serialize(file_0_9k)
      # end,

      # "0.95k Floki"    => fn ->
      #   Floki.parse(file_0_95k)
      # end,
      # "0.95k Meeseeks"    => fn ->
      #   Meeseeks.parse(file_0_95k)
      # end,
      # "0.95k ModestEx"    => fn ->
      #   ModestEx.serialize(file_0_95k)
      # end,

      # "0.97k Floki"    => fn ->
      #   Floki.parse(file_0_97k)
      # end,
      # "0.97k Meeseeks"    => fn ->
      #   Meeseeks.parse(file_0_97k)
      # end,
      # "0.97k ModestEx"    => fn ->
      #   ModestEx.serialize(file_0_97k)
      # end,

      # "0.98k Floki"    => fn ->
      #   Floki.parse(file_0_98k)
      # end,
      # "0.98k Meeseeks"    => fn ->
      #   Meeseeks.parse(file_0_98k)
      # end,
      # "0.98k ModestEx"    => fn ->
      #   ModestEx.serialize(file_0_98k)
      # end,

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