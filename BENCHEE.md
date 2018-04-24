# Parsing benchmark with benchee

`mix benchee`

Should print something like this...

```
Name                    ips        average  deviation         median         99th %
0.2k Floki          30.41 K       32.89 μs    ±28.94%          33 μs          44 μs
0.5k Floki          18.19 K       54.98 μs    ±23.96%          54 μs          72 μs
0.2k Meeseeks       12.94 K       77.29 μs    ±60.15%          65 μs         219 μs
0.5k Meeseeks        9.62 K      103.99 μs    ±46.48%          92 μs         260 μs
0.8k Floki           7.60 K      131.56 μs    ±13.54%         128 μs         197 μs
0.8k ModestEx        6.13 K      163.20 μs    ±23.97%         160 μs         245 μs
1k ModestEx          5.96 K      167.87 μs    ±19.26%         158 μs         317 μs
0.5k ModestEx        4.34 K      230.33 μs    ±21.04%         217 μs         450 μs
1k Floki             4.16 K      240.47 μs    ±11.28%         237 μs         321 μs
0.2k ModestEx        4.07 K      245.57 μs    ±30.04%         213 μs         499 μs
0.8k Meeseeks        2.70 K      370.18 μs    ±30.26%         355 μs         637 μs
1k Meeseeks          1.27 K      789.09 μs    ±26.93%      812.50 μs     1233.77 μs

Name                    ips        average  deviation         median         99th %
2k ModestEx          3.71 K      269.83 μs    ±28.60%         234 μs      552.49 μs
2.5k ModestEx        3.36 K      298.06 μs    ±27.71%         265 μs         620 μs
3k ModestEx          2.92 K      342.16 μs    ±30.50%         297 μs         742 μs
5k ModestEx          2.71 K      369.37 μs    ±27.66%         332 μs         800 μs
10k ModestEx         2.01 K      498.15 μs    ±36.53%         451 μs        1285 μs
2k Floki             1.79 K      558.83 μs    ±10.22%         566 μs      740.88 μs
2.5k Floki           1.41 K      707.96 μs    ±10.26%         704 μs         946 μs
3k Floki             1.14 K      877.92 μs    ±10.49%         875 μs        1183 μs
5k Floki             0.85 K     1171.81 μs     ±8.92%        1166 μs     1474.40 μs
2k Meeseeks          0.55 K     1834.38 μs    ±21.44%        1910 μs     2690.60 μs
2.5k Meeseeks        0.46 K     2173.83 μs    ±23.66%        2112 μs     3227.26 μs
10k Floki            0.45 K     2237.62 μs     ±7.95%        2227 μs     2665.67 μs
3k Meeseeks          0.44 K     2289.81 μs    ±32.79%        2118 μs     3852.10 μs
5k Meeseeks          0.35 K     2848.62 μs    ±23.86%        2792 μs     4137.84 μs
10k Meeseeks        0.199 K     5024.27 μs    ±27.79%        5086 μs     7346.60 μs

Name                    ips        average  deviation         median         99th %
50k ModestEx         568.21        1.76 ms    ±25.23%        1.67 ms        4.38 ms
100k ModestEx        351.41        2.85 ms    ±15.83%        2.79 ms        4.25 ms
150k ModestEx        209.68        4.77 ms    ±14.89%        4.67 ms        8.98 ms
200k ModestEx        192.81        5.19 ms    ±16.11%        5.08 ms       10.12 ms
50k Floki            121.93        8.20 ms     ±9.09%        8.09 ms        9.71 ms
50k Meeseeks          91.60       10.92 ms    ±24.29%       10.77 ms       16.98 ms
350k ModestEx         84.29       11.86 ms     ±5.47%       11.84 ms       12.93 ms
100k Floki            64.25       15.57 ms     ±7.21%       15.64 ms       19.76 ms
100k Meeseeks         59.37       16.84 ms    ±18.58%       16.74 ms       22.97 ms
200k Meeseeks         38.66       25.87 ms    ±11.51%       26.64 ms       32.04 ms
150k Floki            38.38       26.05 ms     ±3.30%       25.96 ms       28.43 ms
150k Meeseeks         35.88       27.87 ms    ±11.02%       28.22 ms       34.11 ms
350k Meeseeks         20.39       49.05 ms     ±8.11%       50.08 ms       56.20 ms
200k Floki            13.40       74.64 ms     ±5.82%       73.33 ms       83.85 ms
350k Floki             4.61      217.11 ms     ±7.87%      218.96 ms      243.37 ms
```