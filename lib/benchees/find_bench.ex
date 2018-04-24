defmodule FindBench do
  import Meeseeks.CSS
  
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

    github_trending_js = File.read!("input/github_trending_js.html") # 34file_1k

    Benchee.run(%{
      "0.2k Floki"    => fn ->
        Floki.find(file_0_2k, "h1")
      end,
      "0.2k Meeseeks"    => fn ->
        result = Meeseeks.parse(file_0_2k, :html)
        |> Meeseeks.one(css("h1"))
        |> Meeseeks.tree()
      end,
      "0.2k ModestEx"    => fn ->
        ModestEx.find(file_0_2k, "h1")
      end,

      "0.5k Floki"    => fn ->
        Floki.find(file_0_5k, "h1")
      end,
      "0.5k Meeseeks"    => fn ->
        result = Meeseeks.parse(file_0_5k, :html)
        |> Meeseeks.one(css("h1"))
        |> Meeseeks.tree()
      end,
      "0.5k ModestEx"    => fn ->
        ModestEx.find(file_0_5k, "h1")
      end,

      "1k Floki"    => fn ->
        Floki.find(file_1k, "h1")
      end,
      "1k Meeseeks"    => fn ->
        result = Meeseeks.parse(file_1k, :html)
        |> Meeseeks.one(css("h1"))
        |> Meeseeks.tree()
      end,
      "1k ModestEx"    => fn ->
        ModestEx.find(file_1k, "h1")
      end
    },
      formatters: [
        Benchee.Formatters.HTML,
        Benchee.Formatters.Console,
        # Benchee.Formatters.CSV
      ], 
      formatter_options: [
        html: [file: "output/find_small.html", auto_open: false],
        # csv: [file: "output/find_small.csv"]
      ]
    )

    Benchee.run(%{
      "2k Floki"    => fn ->
        Floki.find(file_2k, "h1")
      end,
      "2k Meeseeks"    => fn ->
        result = Meeseeks.parse(file_2k, :html)
        |> Meeseeks.one(css("h1"))
        |> Meeseeks.tree()
      end,
      "2k ModestEx"    => fn ->
        ModestEx.find(file_2k, "h1")
      end,

      "2.5k Floki"    => fn ->
        Floki.find(file_2_5k, "h1")
      end,
      "2.5k Meeseeks"    => fn ->
        result = Meeseeks.parse(file_2_5k, :html)
        |> Meeseeks.one(css("h1"))
        |> Meeseeks.tree()
      end,
      "2.5k ModestEx"    => fn ->
        ModestEx.find(file_2_5k, "h1")
      end,

      "3k Floki"    => fn ->
        Floki.find(file_3k, "h1")
      end,
      "3k Meeseeks"    => fn ->
        result = Meeseeks.parse(file_3k, :html)
        |> Meeseeks.one(css("h1"))
        |> Meeseeks.tree()
      end,
      "3k ModestEx"    => fn ->
        ModestEx.find(file_3k, "h1")
      end,

      "5k Floki"    => fn ->
        Floki.find(file_5k, "h1")
      end,
      "5k Meeseeks"    => fn ->
        result = Meeseeks.parse(file_5k, :html)
        |> Meeseeks.one(css("h1"))
        |> Meeseeks.tree()
      end,
      "5k ModestEx"    => fn ->
        ModestEx.find(file_5k, "h1")
      end
    },
      formatters: [
        Benchee.Formatters.HTML,
        Benchee.Formatters.Console,
        # Benchee.Formatters.CSV
      ],
      formatter_options: [
        html: [file: "output/find_mid.html", auto_open: false],
        # csv: [file: "output/find_mid.csv"]
      ]
    )

    Benchee.run(%{
      "10k Floki"    => fn ->
        Floki.find(file_10k, "h1")
      end,
      "10k Meeseeks"    => fn ->
        result = Meeseeks.parse(file_10k, :html)
        |> Meeseeks.one(css("h1"))
        |> Meeseeks.tree()
      end,
      "10k ModestEx"    => fn ->
        ModestEx.find(file_10k, "h1")
      end,

      "50k Floki"    => fn ->
        Floki.find(file_50k, "h1")
      end,
      "50k Meeseeks"    => fn ->
        result = Meeseeks.parse(file_50k, :html)
        |> Meeseeks.one(css("h1"))
        |> Meeseeks.tree()
      end,
      "50k ModestEx"    => fn ->
        ModestEx.find(file_50k, "h1")
      end,

      "100k Floki"    => fn ->
        Floki.find(file_100k, "h1")
      end,
      "100k Meeseeks"    => fn ->
        result = Meeseeks.parse(file_100k, :html)
        |> Meeseeks.one(css("h1"))
        |> Meeseeks.tree()
      end,
      "100k ModestEx"    => fn ->
        ModestEx.find(file_100k, "h1")
      end,

      "150k Floki"    => fn ->
        Floki.find(file_150k, "h1")
      end,
      "160k Meeseeks"    => fn ->
        result = Meeseeks.parse(file_150k, :html)
        |> Meeseeks.one(css("h1"))
        |> Meeseeks.tree()
      end,
      "150k ModestEx"    => fn ->
        ModestEx.find(file_150k, "h1")
      end,

      "200k Floki"    => fn ->
        Floki.find(file_200k, "h1")
      end,
      "200k Meeseeks"    => fn ->
        result = Meeseeks.parse(file_200k, :html)
        |> Meeseeks.one(css("h1"))
        |> Meeseeks.tree()
      end,
      "200k ModestEx"    => fn ->
        ModestEx.find(file_200k, "h1")
      end,

      "341k Floki"    => fn ->
        Floki.find(github_trending_js, "h1")
      end,
      "341k Meeseeks"    => fn ->
        result = Meeseeks.parse(github_trending_js, :html)
        |> Meeseeks.one(css("h1"))
        |> Meeseeks.tree()
      end,
      "341k ModestEx"    => fn ->
        ModestEx.find(github_trending_js, "h1")
      end
    },
      formatters: [
        Benchee.Formatters.HTML,
        Benchee.Formatters.Console,
        # Benchee.Formatters.CSV
      ], 
      formatter_options: [
        html: [file: "output/find_big.html", auto_open: false],
        # csv: [file: "output/find_big.csv"]
      ]
    )
  end
end