*I do not intend to give a complete analysis here. If something is missing or plain wrong send me a message or feel invited to participate in the [forum discussion](https://elixirforum.com/t/overview-of-available-html-tools-in-elixir/12905).*

# Available Elixir html tools

The landscape of available Elixir packages for html tooling is overseeable but in that sense also very focused. Each library is there for a distinct use case.

|Library |HTML5 compliant|Can decode html|Can handle open tags|Supports common CSS selectors|Supports custom CSS selectors|Can manipulate nodes| Use Case |
|--|--|--|--|--|--|--|--|--|
|[Floki](https://github.com/philss/floki) (First commit Nov 2014)| no with default parser; yes with [html5ever](https://github.com/servo/html5ever) parser (*) | yes | yes | yes (22) | [non-standard selector implemented](https://github.com/philss/floki#supported-selectors) | yes, but [limited](https://hexdocs.pm/floki/Floki.html#map/2) | parse and select |
|[Meeseeks](https://github.com/mischov/meeseeks) (First commit Feb 2017) | yes with [meeseeks_html5ever](https://github.com/mischov/meeseeks_html5ever) (*) | yes | yes | yes (27) | yes |no | HTML and XML; custom selectors; CSS and XPath |
|[Myhtmlex](https://github.com/Overbryd/myhtmlex) (First commit Aug 2017) | yes, as a binding to [myhtml](https://github.com/lexborisov/myhtml) library | yes | yes | | | | fast decode/encode |
|[ModestEx](https://github.com/f34nk/modest_ex) (First commit Feb 2018) | yes, as a binding to [Modest](https://github.com/lexborisov/Modest) library | no | yes | yes (38) | [non-standard selector implemented](https://github.com/f34nk/modest_ex/blob/master/SELECTORS.md)  | yes | pipeable string transformations |

(*) There is also a **separate** benchmark availbale for [Meeseeks vs. Floki Performance](https://github.com/mischov/meeseeks_floki_bench).


## Test and Benchmark

	git clone
	mix deps.get

The `test` folder contains examples of the library features side by side.

	mix test

Run benchmarks with:

	mix bench

and

	mix benchee

On my AMD FX-8300 Eight-Core Processor, 15 Gb Ram, Ubuntu 14.04, the benchfella benchmark looks somthing like this:

```
## FlokiParseBench
bench iterations   average time
0.2k       50000   44.01 µs/op
0.5k       50000   74.19 µs/op
0.8k       10000   168.40 µs/op
1k         10000   295.55 µs/op
2k          5000   630.60 µs/op
2.5k        2000   809.48 µs/op
3k          1000   1014.86 µs/op
5k          1000   1583.69 µs/op
10k          500   3766.60 µs/op
50k          100   16466.98 µs/op
100k          50   33268.82 µs/op
150k          50   60254.76 µs/op
200k          20   77062.95 µs/op
350k          10   219021.50 µs/op

## MeeseeksParseBench
bench iterations   average time
0.5k       20000   69.66 µs/op
0.2k       50000   80.22 µs/op
0.8k        5000   317.92 µs/op
1k          2000   731.19 µs/op
2k          1000   1710.41 µs/op
2.5k        1000   2246.20 µs/op
3k          1000   2691.33 µs/op
5k          1000   2789.59 µs/op
10k          500   5287.78 µs/op
50k          100   12052.80 µs/op
100k         100   20607.15 µs/op
200k          50   34117.48 µs/op
150k          50   34138.18 µs/op
350k          50   62865.24 µs/op

## ModestExParseBench
bench iterations   average time
0.8k       10000   170.48 µs/op
1k         10000   202.29 µs/op
0.2k       10000   220.49 µs/op
0.5k       10000   236.21 µs/op
2k         10000   278.06 µs/op
2.5k       10000   302.94 µs/op
3k          5000   367.50 µs/op
5k          5000   379.63 µs/op
10k         2000   566.91 µs/op
50k         1000   1659.96 µs/op
100k        1000   2750.79 µs/op
150k         500   4913.61 µs/op
200k         500   4934.63 µs/op
350k         100   11710.41 µs/op
```

![Parsing - Iterations per second - small](https://github.com/f34nk/elixir_html_tools/blob/master/parse_small_ips.png)

## Conclusions

The benchmark is not very useful since the goal and main strength of each library is different. Also the tested methods are not really comparable, since the implemented overhead is very different between each library. It is safe to say that all libraries perform **very very** fast.

Also the ecosystem of tools is still quite young. There is more to come.

All in all, I would say, the focused nature of the tools makes it **easy for the user to pick the right tool** for the job.

Best, f34nk