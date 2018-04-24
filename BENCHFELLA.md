# Parsing benchmark with benchfella

`mix bench`

Should print something like this...

```
## FlokiParseBench
bench iterations   average time 
0.2k       50000   44.61 µs/op
0.5k       20000   74.06 µs/op
0.8k       10000   169.67 µs/op
1k         10000   295.45 µs/op
2k          5000   630.14 µs/op
2.5k        2000   817.44 µs/op
3k          1000   1040.92 µs/op
5k          1000   1566.17 µs/op
10k          500   3799.30 µs/op
50k          100   16416.83 µs/op
100k          50   33583.08 µs/op
150k          50   56734.88 µs/op
200k          50   70602.04 µs/op
350k          10   218121.10 µs/op

## MeeseeksParseBench
bench iterations   average time 
0.2k       20000   80.11 µs/op
0.5k       20000   80.72 µs/op
0.8k        5000   268.53 µs/op
1k          5000   781.73 µs/op
2k          1000   1773.89 µs/op
2.5k        1000   2132.56 µs/op
5k          1000   2923.76 µs/op
3k          1000   2949.33 µs/op
10k          500   5227.92 µs/op
50k          100   12439.28 µs/op
100k         100   20874.22 µs/op
200k          50   34424.20 µs/op
150k          50   35218.34 µs/op
350k          50   62048.30 µs/op

## ModestExParseBench
bench iterations   average time 
0.8k       10000   169.57 µs/op
1k         10000   209.62 µs/op
0.2k       10000   233.36 µs/op
0.5k       10000   249.35 µs/op
2.5k        5000   254.78 µs/op
2k          5000   338.30 µs/op
3k          5000   399.36 µs/op
5k          5000   445.70 µs/op
10k         5000   654.29 µs/op
50k         1000   1824.97 µs/op
100k        1000   2991.85 µs/op
150k         500   4766.14 µs/op
200k         500   5341.73 µs/op
350k         100   12300.35 µs/op
```