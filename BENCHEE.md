Operating System: Linux"
CPU Information: AMD FX(tm)-8300 Eight-Core Processor
Number of Available Cores: 8
Available memory: 15.66 GB
Elixir 1.6.1
Erlang 20.2

----

# modest_html build WITHOUT threads

## find
```
```

## parse
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

---

# modest_html build WITH threading enabled

## find
```
```

## parse
```
Name                    ips        average  deviation         median         99th %
0.2k Floki          29.36 K       34.06 μs    ±27.63%          34 μs          49 μs
0.5k Floki          18.04 K       55.43 μs    ±22.76%          55 μs          76 μs
0.2k Meeseeks       12.39 K       80.74 μs    ±56.19%          67 μs         226 μs
0.5k Meeseeks        9.16 K      109.23 μs    ±49.56%          94 μs         269 μs
0.8k Floki           7.66 K      130.50 μs    ±10.61%         128 μs         172 μs
1k Floki             3.91 K      255.55 μs     ±9.68%         253 μs         335 μs
0.8k Meeseeks        2.62 K      381.35 μs    ±28.73%         381 μs         647 μs
0.5k ModestEx        1.45 K      690.67 μs    ±22.17%         662 μs     1458.24 μs
0.2k ModestEx        1.43 K      699.94 μs    ±27.80%         664 μs     1644.96 μs
0.8k ModestEx        1.36 K      734.58 μs    ±28.78%         701 μs     1517.16 μs
1k Meeseeks          1.35 K      742.80 μs    ±31.83%         748 μs        1181 μs
1k ModestEx          1.26 K      792.44 μs    ±37.93%         762 μs     1694.84 μs

Name                    ips        average  deviation         median         99th %
2k Floki            1747.04        0.57 ms    ±10.62%        0.58 ms        0.76 ms
2.5k Floki          1361.52        0.74 ms    ±10.72%        0.74 ms        0.99 ms
3k Floki            1152.93        0.87 ms    ±10.41%        0.86 ms        1.16 ms
2k ModestEx         1026.07        0.98 ms    ±27.74%        0.94 ms        1.95 ms
2.5k ModestEx        949.90        1.05 ms    ±23.45%        1.02 ms        1.97 ms
5k ModestEx          887.75        1.13 ms    ±18.08%        1.10 ms        1.89 ms
3k ModestEx          886.84        1.13 ms    ±20.06%        1.10 ms        1.92 ms
5k Floki             850.51        1.18 ms     ±9.51%        1.17 ms        1.50 ms
10k ModestEx         669.07        1.50 ms    ±20.20%        1.44 ms        2.66 ms
2k Meeseeks          607.27        1.65 ms    ±26.27%        1.60 ms        2.64 ms
2.5k Meeseeks        455.05        2.20 ms    ±22.67%        2.11 ms        3.23 ms
10k Floki            445.71        2.24 ms     ±8.78%        2.23 ms        2.77 ms
3k Meeseeks          378.11        2.65 ms    ±24.17%        2.58 ms        3.95 ms
5k Meeseeks          338.47        2.96 ms    ±22.61%        3.11 ms        4.25 ms
10k Meeseeks         213.88        4.68 ms    ±28.57%        4.54 ms        7.50 ms

Name                    ips        average  deviation         median         99th %
50k ModestEx         350.97        2.85 ms    ±13.29%        2.77 ms        4.19 ms
100k ModestEx        221.32        4.52 ms    ±14.84%        4.42 ms        6.84 ms
150k ModestEx        143.53        6.97 ms    ±10.67%        6.76 ms        9.80 ms
200k ModestEx        131.71        7.59 ms    ±14.19%        7.40 ms       11.61 ms
50k Floki            121.78        8.21 ms    ±11.50%        8.05 ms       10.24 ms
50k Meeseeks          90.33       11.07 ms    ±25.11%       10.78 ms       17.38 ms
350k ModestEx         73.56       13.60 ms    ±13.34%       13.35 ms       18.85 ms
100k Floki            64.21       15.58 ms     ±7.17%       15.61 ms       20.56 ms
100k Meeseeks         58.75       17.02 ms    ±19.10%       16.93 ms       23.27 ms
150k Floki            37.34       26.78 ms     ±5.40%       26.49 ms       32.44 ms
200k Meeseeks         36.22       27.61 ms     ±9.70%       27.98 ms       34.17 ms
150k Meeseeks         34.66       28.85 ms    ±12.68%       28.94 ms       38.35 ms
350k Meeseeks         20.03       49.93 ms     ±9.55%       49.62 ms       66.96 ms
200k Floki            13.34       74.94 ms     ±6.36%       74.00 ms       88.98 ms
350k Floki             4.79      208.66 ms     ±7.82%      205.90 ms      233.97 ms
```