```elixir
defp deps do
	[
		# benchmarking helpers
		{:benchfella, "~> 0.3.0"},
		{:modest_ex, "~> 0.0.5-dev"},
		{:myhtmlex, "~> 0.2.0"},
		{:floki, "~> 0.20.0"},
		{:meeseeks, "0.7.6"},
		{:html_sanitize_ex, "~> 1.3.0-rc3"}
	]
end
```

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

...

	## FlokiFileSizesBench
	benchmark name                iterations   average time 
	small.html 1k                      10000   292.52 µs/op
	find small.html 1k                  5000   432.09 µs/op
	wikipedia_hyperlink.html 97k          50   32920.42 µs/op
	## ModestExFileSizesBench
	benchmark name                iterations   average time 
	small.html 1k                       2000   762.04 µs/op
	find small.html 1k                  2000   819.24 µs/op
	wikipedia_hyperlink.html 97k         500   4229.84 µs/op

---

```elixir
defp deps do
  [
    # benchmarking helpers
    {:benchfella, "~> 0.3.0"},
    {:modest_ex, "~> 0.0.13-dev"},
    # {:modest_ex, "~> 1.0.1"},
    # {:modest_ex, path: "../modest_ex"},
    {:myhtmlex, "~> 0.2.0"},
    {:floki, "~> 0.20.0"},
    {:meeseeks, "0.7.6"},
    {:html_sanitize_ex, "~> 1.3.0-rc3"}
  ]
end
```

	## FlokiFileSizesBench
	benchmark name                iterations   average time 
	small.html 1k                      10000   291.66 µs/op
	find small.html 1k                  5000   426.39 µs/op
	wikipedia_hyperlink.html 97k          50   32687.02 µs/op
	## ModestExFileSizesBench
	benchmark name                iterations   average time 
	small.html 1k                       2000   768.15 µs/op
	find small.html 1k                  2000   823.70 µs/op
	wikipedia_hyperlink.html 97k         500   4235.20 µs/op


---

```elixir
defp deps do
	[
		# benchmarking helpers
		{:benchfella, "~> 0.3.0"},
		{:modest_ex, "~> 1.0.1"},
		{:myhtmlex, "~> 0.2.0"},
		{:floki, "~> 0.20.0"},
		{:meeseeks, "0.7.6"},
		{:html_sanitize_ex, "~> 1.3.0-rc3"}
	]
end
```

	## FlokiFileSizesBench
	benchmark name                iterations   average time 
	small.html 1k                      10000   282.87 µs/op
	wikipedia_hyperlink.html 97k          50   31780.16 µs/op
	w3c_html5.html 131k                   50   51469.84 µs/op
	github_trending_js.html 341k          10   180731.20 µs/op
	## MeeseeksFileSizesBench
	benchmark name                iterations   average time 
	small.html 1k                       5000   672.44 µs/op
	wikipedia_hyperlink.html 97k         100   19859.43 µs/op
	w3c_html5.html 131k                   50   33088.78 µs/op
	github_trending_js.html 341k          50   50427.48 µs/op
	## ModestExFileSizesBench
	benchmark name                iterations   average time 
	small.html 1k                       2000   906.53 µs/op
	find small.html 1k                  2000   991.52 µs/op
	wikipedia_hyperlink.html 97k          10   233290.60 µs/op
	w3c_html5.html 131k                    5   471166.80 µs/op
	github_trending_js.html 341k           1   2355732.00 µs/op
	## MyhtmlexFileSizesBench
	benchmark name                iterations   average time 
	small.html 1k                       5000   501.81 µs/op
	wikipedia_hyperlink.html 97k         500   5144.91 µs/op
	w3c_html5.html 131k                  200   8001.39 µs/op
	github_trending_js.html 341k         100   18111.89 µs/op

---

```elixir
defp deps do
	[
		# benchmarking helpers
		{:benchfella, "~> 0.3.0"},
		{:modest_ex, path: "../modest_ex"},
		{:myhtmlex, "~> 0.2.0"},
		{:floki, "~> 0.20.0"},
		{:meeseeks, "0.7.6"},
		{:html_sanitize_ex, "~> 1.3.0-rc3"}
	]
end
```

	## FlokiFileSizesBench
	benchmark name                iterations   average time 
	small.html 1k                      10000   293.91 µs/op
	find small.html 1k                  5000   422.80 µs/op
	wikipedia_hyperlink.html 97k          50   33357.40 µs/op
	## ModestExFileSizesBench
	benchmark name                iterations   average time 
	find small.html 1k                  2000   996.94 µs/op
	small.html 1k                       1000   1041.82 µs/op
	wikipedia_hyperlink.html 97k          10   222071.30 µs/op

---

modest_html
html_serialization_callback
strcpy
vec_push

	bench_serialize_collection

	==============================================
	>> Running for 1000000000 ns <<
	----------------------------------------------
	>>> Estimated runtime: 526.737 ms (+ 1.256 ms)
	----------------------------------------------
	>>> Details

	3 samples of 10 runs
	_______________________________________
	              | sample    | run        |
	--------------+-----------+------------|
	Fastest mean  |   5.267 s | 526.737 ms |
	--------------+-----------+------------|
	Sample mean   |   5.280 s | 528.015 ms |
	--------------+-----------+------------|
	Sample stddev | 12.566 ms |   1.256 ms |


	bench_serialize_tree

	================================================
	>> Running for 1000000000 ns <<
	------------------------------------------------
	>>> Estimated runtime: 189.167 ms (+ 802.633 us)
	------------------------------------------------
	>>> Details

	3 samples of 10 runs
	______________________________________
	              | sample   | run        |
	--------------+----------+------------|
	Fastest mean  |  1.891 s | 189.167 ms |
	--------------+----------+------------|
	Sample mean   |  1.897 s | 189.765 ms |
	--------------+----------+------------|
	Sample stddev | 8.026 ms | 802.633 us |

---

modest_html
html_serialization_callback
vec_push

	bench_serialize_collection

	==============================================
	>> Running for 1000000000 ns <<
	----------------------------------------------
	>>> Estimated runtime: 525.542 ms (+ 1.693 ms)
	----------------------------------------------
	>>> Details

	3 samples of 10 runs
	_______________________________________
	              | sample    | run        |
	--------------+-----------+------------|
	Fastest mean  |   5.255 s | 525.542 ms |
	--------------+-----------+------------|
	Sample mean   |   5.273 s | 527.346 ms |
	--------------+-----------+------------|
	Sample stddev | 16.937 ms |   1.693 ms |


	bench_serialize_tree

	================================================
	>> Running for 1000000000 ns <<
	------------------------------------------------
	>>> Estimated runtime: 189.355 ms (+ 374.095 us)
	------------------------------------------------
	>>> Details

	3 samples of 10 runs
	______________________________________
	              | sample   | run        |
	--------------+----------+------------|
	Fastest mean  |  1.893 s | 189.355 ms |
	--------------+----------+------------|
	Sample mean   |  1.896 s | 189.613 ms |
	--------------+----------+------------|
	Sample stddev | 3.740 ms | 374.095 us |

---

modest_html
html_serialization_callback
open_memstream
fprintf

	bench_serialize_collection

	==============================================
	>> Running for 1000000000 ns <<
	----------------------------------------------
	>>> Estimated runtime: 522.156 ms (+ 1.450 ms)
	----------------------------------------------
	>>> Details

	3 samples of 10 runs
	_______________________________________
	              | sample    | run        |
	--------------+-----------+------------|
	Fastest mean  |   5.221 s | 522.156 ms |
	--------------+-----------+------------|
	Sample mean   |   5.236 s | 523.696 ms |
	--------------+-----------+------------|
	Sample stddev | 14.508 ms |   1.450 ms |


	bench_serialize_tree

	==============================================
	>> Running for 1000000000 ns <<
	----------------------------------------------
	>>> Estimated runtime: 185.861 ms (+ 2.819 ms)
	----------------------------------------------
	>>> Details

	3 samples of 10 runs
	_______________________________________
	              | sample    | run        |
	--------------+-----------+------------|
	Fastest mean  |   1.858 s | 185.861 ms |
	--------------+-----------+------------|
	Sample mean   |   1.887 s | 188.772 ms |
	--------------+-----------+------------|
	Sample stddev | 28.192 ms |   2.819 ms |

---

modest_html
serialize_tree_buffer benchmark

	bench_serialize_tree_buffer

	===============================================
	>> Running for 1000000000 ns <<
	-----------------------------------------------
	>>> Estimated runtime: 615.556 us (+ 20.824 us)
	-----------------------------------------------
	>>> Details

	3 samples of 100 runs
	_______________________________________
	              | sample    | run        |
	--------------+-----------+------------|
	Fastest mean  | 61.555 ms | 615.556 us |
	--------------+-----------+------------|
	Sample mean   | 63.056 ms | 630.561 us |
	--------------+-----------+------------|
	Sample stddev |  2.082 ms |  20.824 us |

---

modest_html
parse_tree
with workspace init and destroy in one call
vec_reserve in workspace init

	bench_parse_tree

	==============================================
	>> Running for 1000000000 ns <<
	----------------------------------------------
	>>> Estimated runtime: 6.644 ms (+ 119.909 us)
	----------------------------------------------
	>>> Details

	3 samples of 100 runs
	________________________________________
	              | sample     | run        |
	--------------+------------+------------|
	Fastest mean  | 664.428 ms |   6.644 ms |
	--------------+------------+------------|
	Sample mean   | 674.309 ms |   6.743 ms |
	--------------+------------+------------|
	Sample stddev |  11.990 ms | 119.909 us |

---

modest_html
parse_tree
with workspace init and destroy in one call
OHNE vec_reserve in workspace init

	bench_parse_tree

	==============================================
	>> Running for 1000000000 ns <<
	----------------------------------------------
	>>> Estimated runtime: 6.583 ms (+ 129.029 us)
	----------------------------------------------
	>>> Details

	3 samples of 100 runs
	________________________________________
	              | sample     | run        |
	--------------+------------+------------|
	Fastest mean  | 658.376 ms |   6.583 ms |
	--------------+------------+------------|
	Sample mean   | 666.325 ms |   6.663 ms |
	--------------+------------+------------|
	Sample stddev |  12.902 ms | 129.029 us |

---

modest_html
clock_test

myhtml_serialization_tree_buffer

	[LOG]	myhtml_serialization_tree_buffer_bench()
		run 125 times	total 1.0007 sec	average = 8.0053 millisec
	[LOG]	parse_tree_bench()
		run 135 times	total 1.0039 sec	average = 7.4364 millisec
	[LOG]	parse_and_select_bench()
		run 131 times	total 1.0030 sec	average = 7.6564 millisec
	[LOG]	parse_select_and_serialize_collection_bench()
		run 111 times	total 1.0025 sec	average = 9.0320 millisec
	[LOG]	parse_select_and_serialize_tree_bench()
		run 110 times	total 1.0029 sec	average = 9.1171 millisec
	[LOG]	parse_select_and_serialize_tree_buffer_bench()
		run 114 times	total 1.0052 sec	average = 8.8174 millisec


html_serialize_node

	[LOG]	myhtml_serialization_tree_buffer_bench()
		run 127 times	total 1.0041 sec	average = 7.9061 millisec
	[LOG]	parse_tree_bench()
		run 132 times	total 1.0047 sec	average = 7.6114 millisec
	[LOG]	parse_and_select_bench()
		run 119 times	total 1.0059 sec	average = 8.4528 millisec
	[LOG]	parse_select_and_serialize_collection_bench()
		run 109 times	total 1.0028 sec	average = 9.2003 millisec
	[LOG]	parse_select_and_serialize_tree_bench()
		run 111 times	total 1.0027 sec	average = 9.0332 millisec
	[LOG]	parse_select_and_serialize_tree_buffer_bench()
		run 118 times	total 1.0008 sec	average = 8.4810 millisec

	## FlokiFileSizesBench
	benchmark name                iterations   average time 
	small.html 1k                      10000   294.03 µs/op
	find small.html 1k                  5000   431.27 µs/op
	wikipedia_hyperlink.html 97k          50   33343.12 µs/op
	## ModestExFileSizesBench
	benchmark name                iterations   average time 
	find small.html 1k                  2000   1011.68 µs/op
	small.html 1k                       1000   1076.60 µs/op
	wikipedia_hyperlink.html 97k          10   221562.60 µs/op
