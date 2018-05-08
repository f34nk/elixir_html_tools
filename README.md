*I do not intend to give a complete analysis here. If something is missing or plain wrong send me a message or feel invited to participate in the [forum discussion](https://elixirforum.com/t/overview-of-available-html-tools-in-elixir/12905) or create an **Issue** or submit a **PR**.*

# Html tools in Elixir

The landscape of available Elixir packages for html tooling is overseeable but in that sense also very focused. Each library is there for a distinct use case.

|   | **[Floki](https://github.com/philss/floki)** | **[Meeseeks](https://github.com/mischov/meeseeks)** | **[Myhtmlex](https://github.com/Overbryd/myhtmlex)** | **[ModestEx](https://github.com/f34nk/modest_ex)** | **[TidyEx](https://github.com/f34nk/tidy_ex)** | **[HtmlSanitizeEx](https://github.com/rrrene/html_sanitize_ex)** |
|  :------ | :------ | :------ | :------ | :------ | :------ | :------ |
|  **First Commit** | Nov 2014 | Feb 2017 | Aug 2017 | Feb 2018 | April 2018 | July 2015 |
|  **HTML5 compliant** | no with default parser; yes with [html5ever](https://github.com/servo/html5ever) parser (*) | yes with [meeseeks_html5ever](https://github.com/mischov/meeseeks_html5ever) (*) | yes, as a binding to [myhtml](https://github.com/lexborisov/myhtml) | yes, as a binding to [Modest](https://github.com/lexborisov/Modest) library | yes, as a binding to [tidy-html5](https://github.com/htacg/tidy-html5) library | [no](https://github.com/rrrene/html_sanitize_ex/blob/master/lib/html_sanitize_ex/scrubber/html5.ex#L2) |
|  **Can parse XML** |  | yes |  |  | | |
|  **Supports XPath selectors** |  | yes |  |  | | |
|  **Supports common CSS selectors** | yes (22) | yes (27) |  | yes (36) | | |
|  **Supports custom CSS selectors** | [non-standard selector implemented](https://github.com/philss/floki#supported-selectors) | yes, flexible [Api for custom selectors](https://github.com/mischov/meeseeks#custom-selectors) |  | [non-standard selector implemented](https://github.com/f34nk/modest_ex/blob/master/SELECTORS.md) | | |
|  **Can manipulate nodes** | yes, but limited |  |  | yes | | |
|  **Parser return type** | `{tag_name, attributes, children_nodes}` | `Meeseeks.Document` | `{tag_name, attributes, children_nodes}` | `String` | `String` | `String` |
|  **Use Case** | parse and select | supports HTML and XML; custom selectors; CSS and XPath | fast HTML decode/encode | pipeable string transformations; provides 16 functions to manipulate HTML | corrects and cleans up HTML content by fixing markup errors | sanitizer user input |

(*) There is also a **separate** benchmark availbale for [Meeseeks vs. Floki Performance](https://github.com/mischov/meeseeks_floki_bench).


## Test

	git clone
	mix deps.get

The `test` folder contains examples of the library features side by side.

	mix test

## Benchmark

Tested versions:

```
{:floki, "~> 0.20.0"}
{:meeseeks, "0.7.6"}
{:myhtmlex, "~> 0.2.0"}
{:modest_ex, "~> 1.0.3"}
{:tidy_ex, "~> 1.0.0"}
{:html_sanitize_ex, "~> 1.3.0-rc3"}
```

Run benchmarks with:

	MIX_ENV=prod mix bench

and

	MIX_ENV=prod mix benchee

On my AMD FX-8300 Eight-Core Processor, 15 Gb Ram, Ubuntu 14.04, the benchmarks looks something like this:

```
## FlokiParseBench
bench iterations   average time 
0.2k       50000   50.18 µs/op
0.5k       20000   86.37 µs/op
1k          5000   304.72 µs/op
2k          5000   654.28 µs/op
5k          1000   1585.65 µs/op
10k          500   3843.19 µs/op
50k          100   16846.18 µs/op
100k          50   31044.22 µs/op
200k          20   80808.60 µs/op
350k          10   209489.90 µs/op

## MeeseeksParseBench
bench iterations   average time 
0.2k       20000   74.05 µs/op
0.5k       20000   78.40 µs/op
1k          5000   722.47 µs/op
2k          1000   1525.72 µs/op
5k          1000   2733.66 µs/op
10k          500   4770.79 µs/op
50k          100   11930.73 µs/op
100k         100   18903.71 µs/op
200k          50   31757.00 µs/op
350k          50   60043.98 µs/op

## MyhtmlexParseBench
bench iterations   average time 
0.5k        5000   401.32 µs/op
0.2k        5000   412.80 µs/op
1k          5000   515.46 µs/op
2k          5000   737.43 µs/op
5k          1000   1021.32 µs/op
10k         1000   1644.85 µs/op
50k         1000   2944.80 µs/op
100k         500   4749.36 µs/op
200k         200   7786.63 µs/op
350k         100   18435.59 µs/op

## ModestExParseBench
bench iterations   average time 
1k         10000   181.77 µs/op
0.2k       10000   216.83 µs/op
0.5k       10000   221.71 µs/op
2k          5000   319.47 µs/op
5k          5000   353.81 µs/op
10k         5000   731.99 µs/op
50k         1000   1599.91 µs/op
100k        1000   2951.25 µs/op
200k         500   5285.43 µs/op
350k         100   11944.52 µs/op

## TidyExParseBench
bench iterations   average time 
0.2k       10000   173.74 µs/op
0.5k       10000   201.40 µs/op
1k          5000   307.77 µs/op
2k          5000   442.71 µs/op
5k          1000   1452.07 µs/op
10k         1000   2687.98 µs/op
50k          200   8373.23 µs/op
100k         100   10168.21 µs/op
200k         100   19607.18 µs/op

## HtmlSanitizeExParseBench
bench iterations   average time 
0.2k       10000   173.68 µs/op
0.5k       10000   227.71 µs/op
1k          2000   765.60 µs/op
2k          1000   1791.06 µs/op
5k           500   3970.00 µs/op
10k          200   9017.30 µs/op
50k           50   39859.24 µs/op
100k          20   75973.80 µs/op
200k          10   178685.10 µs/op
```

## Conclusions

The ecosystem of tools is still quite young. There is more to come.

As [mentioned in the forum](https://elixirforum.com/t/html-tools-in-elixir/12905/16): in this test, Floki does **not** use the html5 compliant parser, since it is not supported by the latest Erlang version.

Nonetheless, a very rough user guideline could be:

If you are looking for parsing speed of *smallish* (up to 1kB) html strings, `Floki` and `Meeseeks` are the fastest.

`Floki` offers all common CSS selectors and some [limited features](https://hexdocs.pm/floki/Floki.html#map/2) to manipulate nodes.

`Meeseeks` provides a [flexible Api for custom selectors](https://github.com/mischov/meeseeks#custom-selectors). It can also parse **XML** and supports **XPath** selectors.

If you are looking for a good performance distribution over many file sizes you can use `Myhtmlex`. With that you can encode and decode html super fast.

However, if you need to do complex manipulations on the html string you can use `ModestEx`. With that you get [**36**](https://github.com/f34nk/modest_ex/blob/master/SELECTORS.md) CSS selectors and [**16**](https://github.com/f34nk/modest_ex/blob/master/FEATURES.md) methods to transform html strings.

For html5 spec accuracy or user input sanitation there are [TidyEx](https://github.com/f34nk/tidy_ex) amd [HtmlSanitizeEx](https://github.com/rrrene/html_sanitize_ex).

All in all, I would say, the focused nature of the tools makes it easy for the user to pick the right tool for the job.

Best, f34nk
