defp deps do
	[
		# benchmarking helpers
		{:benchfella, "~> 0.3.0"},
		{:modest_ex, "~> 0.0.13-dev"},
		{:myhtmlex, "~> 0.2.0"},
		{:floki, "~> 0.20.0"},
		{:meeseeks, "0.7.6"},
		{:html_sanitize_ex, "~> 1.3.0-rc3"}
	]
end

	## FlokiFindBench
	benchmark name                iterations   average time
	small.html 0.5k                    10000   109.07 µs/op
	bootstrap_example.html 1k           5000   437.01 µs/op
	wikipedia_hyperlink.html 97k          50   49802.70 µs/op
	w3c_html5.html 131k                   20   98302.50 µs/op
	github_trending_js.html 341k          10   208633.30 µs/op

	## FlokiParseBench
	benchmark name                iterations   average time
	small.html 0.5k                    20000   84.96 µs/op
	bootstrap_example.html 1k          10000   292.83 µs/op
	wikipedia_hyperlink.html 97k          50   34074.38 µs/op
	w3c_html5.html 131k                   50   51421.28 µs/op
	github_trending_js.html 341k          10   187959.30 µs/op

	## ModestExFindBench
	benchmark name                iterations   average time
	small.html 0.5k                     5000   734.79 µs/op
	bootstrap_example.html 1k           2000   788.63 µs/op
	wikipedia_hyperlink.html 97k         500   3268.45 µs/op
	w3c_html5.html 131k                  500   5278.52 µs/op
	github_trending_js.html 341k         200   8404.32 µs/op

	## ModestExParseBench
	benchmark name                iterations   average time
	bootstrap_example.html 1k           2000   780.31 µs/op
	crached...

	## ModestExFileSizesBench
	benchmark name                iterations   average time
	wikipedia_hyperlink.html 97k         500   4272.05 µs/op
	w3c_html5.html 131k                  500   6137.09 µs/op
	github_trending_js.html 341k         100   10453.26 µs/op

---

modest_worker
	handle_find
		workspace
		html_serialize_collection
			modest_html
				myhtml_serialization_tree_buffer
		eterm_vec_push
	handle_serialize
		workspace
		html_serialize_tree
			modest_html
				myhtml_serialization_tree_buffer
		eterm_vec_push

	## FlokiFindBench
	benchmark name                iterations   average time
	small.html 0.5k                    10000   100.81 µs/op
	bootstrap_example.html 1k           5000   434.31 µs/op
	wikipedia_hyperlink.html 97k          50   39209.06 µs/op
	w3c_html5.html 131k                   20   96207.90 µs/op
	github_trending_js.html 341k          10   207775.10 µs/op

	## FlokiParseBench
	benchmark name                iterations   average time
	small.html 0.5k                    20000   82.79 µs/op
	bootstrap_example.html 1k          10000   278.25 µs/op
	wikipedia_hyperlink.html 97k          50   32844.44 µs/op
	w3c_html5.html 131k                   50   54957.88 µs/op
	github_trending_js.html 341k          10   192945.50 µs/op

	## ModestExFindBench
	benchmark name                iterations   average time
	small.html 0.5k                     5000   726.01 µs/op
	bootstrap_example.html 1k           2000   1025.89 µs/op
	wikipedia_hyperlink.html 97k         500   3582.20 µs/op
	w3c_html5.html 131k                  500   5442.77 µs/op
	github_trending_js.html 341k         100   10344.45 µs/op

	## ModestExParseBench
	benchmark name                iterations   average time
	small.html 0.5k                     5000   687.30 µs/op
	bootstrap_example.html 1k           2000   763.36 µs/op
	wikipedia_hyperlink.html 97k         500   4380.93 µs/op
	w3c_html5.html 131k                  500   6472.01 µs/op
	github_trending_js.html 341k         100   12112.01 µs/op

modest_worker
	handle_find
		workspace
			reserve
		html_serialize_collection
			modest_html
				myhtml_serialization_tree_buffer
		eterm_vec_push
	handle_serialize
		workspace
			reserve
		html_serialize_tree
			modest_html
				myhtml_serialization_tree_buffer
		eterm_vec_push

	## FlokiFindBench
	benchmark name                iterations   average time
	small.html 0.5k                    20000   97.18 µs/op
	bootstrap_example.html 1k           5000   419.76 µs/op
	wikipedia_hyperlink.html 97k          50   37288.10 µs/op
	w3c_html5.html 131k                   20   87516.90 µs/op
	github_trending_js.html 341k          10   178790.30 µs/op

	## FlokiParseBench
	benchmark name                iterations   average time
	small.html 0.5k                    20000   80.63 µs/op
	bootstrap_example.html 1k          10000   263.55 µs/op
	wikipedia_hyperlink.html 97k          50   30608.98 µs/op
	w3c_html5.html 131k                   50   52282.12 µs/op
	github_trending_js.html 341k          10   180433.20 µs/op

	## ModestExFindBench
	benchmark name                iterations   average time
	small.html 0.5k                     5000   652.55 µs/op
	bootstrap_example.html 1k           2000   935.88 µs/op
	wikipedia_hyperlink.html 97k         500   3425.69 µs/op
	w3c_html5.html 131k                  500   5292.56 µs/op
	github_trending_js.html 341k         200   8133.35 µs/op

	## ModestExParseBench
	benchmark name                iterations   average time
	small.html 0.5k                     5000   639.15 µs/op
	bootstrap_example.html 1k           5000   696.95 µs/op
	wikipedia_hyperlink.html 97k         500   4205.85 µs/op
	w3c_html5.html 131k                  500   6489.84 µs/op
	github_trending_js.html 341k         100   10843.10 µs/op

modest_worker
	handle_find
		modest_finder_by_selectors_list
		myhtml_serialization_tree_buffer
		eterm_vec_push
	handle_serialize
		myhtml_parse
		myhtml_serialization_tree_buffer
		eterm_vec_push

	## FlokiFindBench
	benchmark name                iterations   average time
	small.html 0.5k                    20000   96.65 µs/op
	bootstrap_example.html 1k           5000   411.26 µs/op
	wikipedia_hyperlink.html 97k          50   37405.70 µs/op
	w3c_html5.html 131k                   20   92969.00 µs/op
	github_trending_js.html 341k          10   199646.50 µs/op

	## FlokiParseBench
	benchmark name                iterations   average time
	small.html 0.5k                    20000   78.30 µs/op
	bootstrap_example.html 1k          10000   268.96 µs/op
	wikipedia_hyperlink.html 97k          50   32344.26 µs/op
	w3c_html5.html 131k                   50   53899.30 µs/op
	github_trending_js.html 341k          10   180760.30 µs/op

	## ModestExFindBench
	benchmark name                iterations   average time
	small.html 0.5k                     5000   690.19 µs/op
	bootstrap_example.html 1k           2000   933.78 µs/op
	wikipedia_hyperlink.html 97k         500   3389.13 µs/op
	w3c_html5.html 131k                  500   5260.34 µs/op
	github_trending_js.html 341k         200   7794.57 µs/op

	## ModestExParseBench
	benchmark name                iterations   average time
	small.html 0.5k                     5000   757.34 µs/op
	bootstrap_example.html 1k           2000   866.68 µs/op
	wikipedia_hyperlink.html 97k         500   4502.43 µs/op
	w3c_html5.html 131k                  500   6361.13 µs/op
	github_trending_js.html 341k         100   12310.58 µs/op