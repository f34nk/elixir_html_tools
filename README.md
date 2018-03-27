*I do not intend to give a complete analysis here. If something is missing or plain wrong send me a message or feel invited to participate in the [forum discussion](https://elixirforum.com/t/overview-of-available-html-tools-in-elixir/12905).*

# Available Elixir html tools

The landscape of available Elixir packages for html tooling is overseeable but in that sense also very focused. Each library is there for a distinct use case.

|Library |First commit|HTML5 compliant|Can decode html|Can handle open tags|Supports common CSS selectors|Supports custom CSS selectors|Can manipulate nodes| Use Case |
|--|--|--|--|--|--|--|--|--|
|[Floki](https://github.com/philss/floki)         | Nov 2014 | no with default parser; yes with [html5ever](https://github.com/servo/html5ever) parser (*) | yes | yes | yes (22) | [non-standard selector implemented](https://github.com/philss/floki#supported-selectors) | yes, but [limited](https://hexdocs.pm/floki/Floki.html#map/2) | parse and select |
|[HtmlSanitizeEx](https://github.com/rrrene/html_sanitize_ex) | Jul 2015 | | no | yes | | | | sanitize |
|[Meeseeks](https://github.com/mischov/meeseeks)  | Feb 2017 | yes with [meeseeks_html5ever](https://github.com/mischov/meeseeks_html5ever) (*) | yes | yes | yes (27) | yes |no | HTML and XML; custom selectors; CSS and XPath |
|[Myhtmlex](https://github.com/Overbryd/myhtmlex) | Aug 2017 | yes, as a binding to [myhtml](https://github.com/lexborisov/myhtml) library | yes | yes | | | | fast decode/encode |
|[ModestEx](https://github.com/f34nk/modest_ex)   | Feb 2018 | yes, as a binding to [Modest](https://github.com/lexborisov/Modest) library | no | yes | yes (36) | [non-standard selector implemented](https://github.com/f34nk/modest_ex/blob/master/SELECTORS.md)  | yes | pipeable string transformations |

(*) There is also a **separate** benchmark availbale for [Meeseeks vs. Floki Performance](https://github.com/mischov/meeseeks_floki_bench).

## Test and Benchmark

	git clone
	mix deps.get

The `test` folder contains examples of the library features side by side.

	mix test

The `bench` folder contains

	mix bench

On my AMD FX(tm)-8300 Eight-Core Processor × 8, 15 Gb Ram, Ubuntu 14.04:

	## FlokiFileSizesBench
	benchmark name                iterations   average time 
	wikipedia_hyperlink.html 97k          50   31568.56 µs/op
	w3c_html5.html 131k                   50   50484.44 µs/op
	github_trending_js.html 341k          10   178549.30 µs/op

	## MeeseeksFileSizesBench
	benchmark name                iterations   average time 
	wikipedia_hyperlink.html 97k         100   20048.91 µs/op
	w3c_html5.html 131k                   50   31776.76 µs/op
	github_trending_js.html 341k          50   50943.58 µs/op

	## ModestExFileSizesBench
	benchmark name                iterations   average time 
	wikipedia_hyperlink.html 97k         500   4272.05 µs/op
	w3c_html5.html 131k                  500   6137.09 µs/op
	github_trending_js.html 341k         100   10453.26 µs/op

	## MyhtmlexFileSizesBench
	benchmark name                iterations   average time 
	wikipedia_hyperlink.html 97k         500   4753.98 µs/op
	w3c_html5.html 131k                  200   7444.40 µs/op
	github_trending_js.html 341k         100   16338.42 µs/op

## Conclusions

The benchmark is not very useful since the goal and main strength of each library is different. Also the tested methods are not really comparable, since the implemented overhead is very different between each library. It is safe to say that all libraries perform **very very** fast.

Also the ecosystem of tools is still quite young. There is more to come.

All in all, I would say, the focused nature of the tools makes it **easy for the user to pick the right tool** for the job.

Best, f34nk