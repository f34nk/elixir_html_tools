# Parsing benchmark with benchfella

`mix bench`

Should print something like this...

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