Operating System: Linux"
CPU Information: AMD FX(tm)-8300 Eight-Core Processor
Number of Available Cores: 8
Available memory: 15.66 GB
Elixir 1.6.1
Erlang 20.2

----

# modest_html build without threads

modest_html
  MyCORE_BUILD_WITHOUT_THREADS=YES
modest_ex
  build against local modest_html

## find
```
Name                    ips        average  deviation         median         99th %
0.2k Floki          19.67 K       50.85 μs     ±9.40%          49 μs          64 μs
0.5k Floki          13.74 K       72.79 μs     ±9.45%          71 μs          91 μs
0.2k ModestEx        5.35 K      186.92 μs    ±33.64%         183 μs         302 μs
0.5k ModestEx        5.19 K      192.73 μs    ±31.42%         192 μs         277 μs
1k ModestEx          3.96 K      252.65 μs    ±18.60%         240 μs      363.25 μs
1k Floki             2.72 K      367.55 μs     ±8.09%         360 μs         461 μs

Comparison:
0.2k Floki          19.67 K
0.5k Floki          13.74 K - 1.43x slower
0.2k ModestEx        5.35 K - 3.68x slower
0.5k ModestEx        5.19 K - 3.79x slower
1k ModestEx          3.96 K - 4.97x slower
1k Floki             2.72 K - 7.23x slower

Name                    ips        average  deviation         median         99th %
2k ModestEx          2.91 K      343.87 μs    ±25.04%         316 μs      662.26 μs
5k ModestEx          2.77 K      360.98 μs    ±17.23%         339 μs         521 μs
3k ModestEx          2.73 K      366.18 μs    ±20.30%         327 μs      564.65 μs
2.5k ModestEx        2.70 K      371.11 μs    ±23.80%         341 μs         528 μs
2k Floki             1.12 K      891.76 μs    ±11.08%         859 μs        1137 μs
2.5k Floki           0.88 K     1131.27 μs     ±7.61%        1101 μs     1379.40 μs
3k Floki             0.71 K     1403.28 μs     ±7.43%        1372 μs     1695.41 μs
5k Floki             0.63 K     1592.82 μs     ±6.19%        1571 μs     1877.64 μs

Comparison:
2k ModestEx          2.91 K
5k ModestEx          2.77 K - 1.05x slower
3k ModestEx          2.73 K - 1.06x slower
2.5k ModestEx        2.70 K - 1.08x slower
2k Floki             1.12 K - 2.59x slower
2.5k Floki           0.88 K - 3.29x slower
3k Floki             0.71 K - 4.08x slower
5k Floki             0.63 K - 4.63x slower

Name                    ips        average  deviation         median         99th %
10k ModestEx        2070.78        0.48 ms    ±13.60%        0.46 ms        0.76 ms
50k ModestEx         776.16        1.29 ms     ±7.27%        1.23 ms        1.51 ms
100k ModestEx        458.53        2.18 ms     ±5.75%        2.12 ms        2.56 ms
200k ModestEx        418.52        2.39 ms    ±22.17%        2.35 ms        4.23 ms
10k Floki            341.97        2.92 ms     ±5.02%        2.88 ms        3.37 ms
150k ModestEx        264.97        3.77 ms     ±7.43%        3.74 ms        5.22 ms
341k ModestEx        128.52        7.78 ms     ±4.78%        7.67 ms        8.96 ms
50k Floki             91.69       10.91 ms    ±13.84%       10.60 ms       16.30 ms
200k Floki            45.70       21.88 ms     ±6.17%       21.85 ms       25.60 ms
100k Floki            45.66       21.90 ms     ±6.58%       21.93 ms       26.16 ms
150k Floki            22.38       44.68 ms     ±5.59%       44.47 ms       50.69 ms
341k Floki             4.57      218.82 ms     ±4.40%      218.43 ms      239.49 ms

Comparison:
10k ModestEx        2070.78
50k ModestEx         776.16 - 2.67x slower
100k ModestEx        458.53 - 4.52x slower
200k ModestEx        418.52 - 4.95x slower
10k Floki            341.97 - 6.06x slower
150k ModestEx        264.97 - 7.82x slower
341k ModestEx        128.52 - 16.11x slower
50k Floki             91.69 - 22.58x slower
200k Floki            45.70 - 45.31x slower
100k Floki            45.66 - 45.35x slower
150k Floki            22.38 - 92.52x slower
341k Floki             4.57 - 453.13x slower
```

## parse
```
Name                    ips        average  deviation         median         99th %
0.2k Floki          32.01 K       31.24 μs    ±31.07%          30 μs          41 μs
0.5k Floki          19.10 K       52.36 μs    ±24.77%          51 μs          68 μs
0.2k ModestEx        6.38 K      156.68 μs    ±29.89%         165 μs      285.35 μs
0.5k ModestEx        6.27 K      159.42 μs    ±30.73%         152 μs         308 μs
1k ModestEx          5.27 K      189.87 μs    ±19.87%         170 μs      278.07 μs
1k Floki             4.36 K      229.62 μs     ±9.52%         226 μs         299 μs

Comparison:
0.2k Floki          32.01 K
0.5k Floki          19.10 K - 1.68x slower
0.2k ModestEx        6.38 K - 5.02x slower
0.5k ModestEx        6.27 K - 5.10x slower
1k ModestEx          5.27 K - 6.08x slower
1k Floki             4.36 K - 7.35x slower

Name                    ips        average  deviation         median         99th %
2k ModestEx          3.51 K      284.72 μs    ±24.49%         263 μs         497 μs
3k ModestEx          3.39 K      294.72 μs     ±8.32%         287 μs         349 μs
2.5k ModestEx        3.35 K      298.82 μs    ±21.57%         258 μs         439 μs
5k ModestEx          2.45 K      408.87 μs    ±23.14%         423 μs      609.97 μs
2k Floki             1.91 K      524.91 μs     ±8.29%         507 μs      679.12 μs
2.5k Floki           1.48 K      674.23 μs    ±21.84%         647 μs      907.24 μs
3k Floki             1.21 K      828.14 μs     ±8.39%         798 μs     1037.08 μs
5k Floki             0.90 K     1111.92 μs     ±7.26%        1074 μs     1352.22 μs

Comparison:
2k ModestEx          3.51 K
3k ModestEx          3.39 K - 1.04x slower
2.5k ModestEx        3.35 K - 1.05x slower
5k ModestEx          2.45 K - 1.44x slower
2k Floki             1.91 K - 1.84x slower
2.5k Floki           1.48 K - 2.37x slower
3k Floki             1.21 K - 2.91x slower
5k Floki             0.90 K - 3.91x slower

Name                    ips        average  deviation         median         99th %
10k ModestEx        1609.77        0.62 ms    ±27.60%        0.50 ms        1.00 ms
50k ModestEx         509.28        1.96 ms    ±12.71%        1.86 ms        2.28 ms
10k Floki            465.04        2.15 ms     ±6.46%        2.11 ms        2.54 ms
200k ModestEx        368.38        2.72 ms    ±10.69%        2.65 ms        3.84 ms
100k ModestEx        362.36        2.76 ms     ±8.79%        2.75 ms        3.77 ms
150k ModestEx        233.26        4.29 ms     ±6.00%        4.21 ms        4.92 ms
50k Floki            125.08        8.00 ms     ±7.98%        7.92 ms        9.66 ms
341k ModestEx        100.18        9.98 ms     ±4.45%        9.92 ms       10.99 ms
100k Floki            67.72       14.77 ms     ±6.05%       14.82 ms       17.00 ms
200k Floki            66.96       14.93 ms     ±7.14%       15.06 ms       19.20 ms
150k Floki            37.44       26.71 ms    ±10.41%       25.63 ms       35.66 ms
341k Floki             5.40      185.09 ms     ±7.98%      191.04 ms      205.83 ms

Comparison:
10k ModestEx        1609.77
50k ModestEx         509.28 - 3.16x slower
10k Floki            465.04 - 3.46x slower
200k ModestEx        368.38 - 4.37x slower
100k ModestEx        362.36 - 4.44x slower
150k ModestEx        233.26 - 6.90x slower
50k Floki            125.08 - 12.87x slower
341k ModestEx        100.18 - 16.07x slower
100k Floki            67.72 - 23.77x slower
200k Floki            66.96 - 24.04x slower
150k Floki            37.44 - 42.99x slower
341k Floki             5.40 - 297.96x slower
```

---

# modest_html build WITH threads

modest_html
modest_ex
  build against local modest_html

## find
```
Name                    ips        average  deviation         median         99th %
0.2k Floki          19.52 K       51.24 μs    ±25.35%          49 μs          66 μs
0.5k Floki          13.97 K       71.57 μs    ±10.61%          70 μs          92 μs
0.2k ModestEx        5.24 K      190.90 μs    ±33.91%         198 μs      317.50 μs
0.5k ModestEx        5.19 K      192.82 μs    ±32.85%      191.50 μs         307 μs
1k ModestEx          4.30 K      232.74 μs    ±17.66%         213 μs         323 μs
1k Floki             2.75 K      364.08 μs    ±10.23%         353 μs      482.52 μs

Comparison:
0.2k Floki          19.52 K
0.5k Floki          13.97 K - 1.40x slower
0.2k ModestEx        5.24 K - 3.73x slower
0.5k ModestEx        5.19 K - 3.76x slower
1k ModestEx          4.30 K - 4.54x slower
1k Floki             2.75 K - 7.11x slower

Name                    ips        average  deviation         median         99th %
2.5k ModestEx        2.83 K      352.89 μs    ±23.88%         300 μs         515 μs
2k ModestEx          2.75 K      363.81 μs    ±22.02%         402 μs      565.24 μs
3k ModestEx          2.67 K      375.05 μs    ±20.12%         330 μs         518 μs
5k ModestEx          2.59 K      386.08 μs    ±19.30%         343 μs         585 μs
2k Floki             1.16 K      863.91 μs    ±10.95%         834 μs     1128.54 μs
2.5k Floki           0.88 K     1133.77 μs     ±8.45%        1104 μs        1408 μs
3k Floki             0.72 K     1386.85 μs     ±7.48%        1360 μs        1670 μs
5k Floki             0.63 K     1581.38 μs     ±6.23%        1563 μs     1937.52 μs

Comparison:
2.5k ModestEx        2.83 K
2k ModestEx          2.75 K - 1.03x slower
3k ModestEx          2.67 K - 1.06x slower
5k ModestEx          2.59 K - 1.09x slower
2k Floki             1.16 K - 2.45x slower
2.5k Floki           0.88 K - 3.21x slower
3k Floki             0.72 K - 3.93x slower
5k Floki             0.63 K - 4.48x slower

Name                    ips        average  deviation         median         99th %
10k ModestEx        1917.16        0.52 ms    ±22.30%        0.47 ms        0.90 ms
50k ModestEx         641.65        1.56 ms    ±17.17%        1.54 ms        1.96 ms
200k ModestEx        446.78        2.24 ms     ±6.12%        2.20 ms        2.59 ms
100k ModestEx        433.01        2.31 ms     ±8.37%        2.30 ms        2.67 ms
10k Floki            341.27        2.93 ms     ±5.78%        2.88 ms        3.41 ms
150k ModestEx        277.40        3.61 ms     ±5.73%        3.53 ms        4.20 ms
341k ModestEx        128.38        7.79 ms     ±6.66%        7.70 ms        8.91 ms
50k Floki             96.23       10.39 ms     ±9.70%       10.10 ms       13.44 ms
200k Floki            47.01       21.27 ms     ±7.85%       20.94 ms       26.87 ms
100k Floki            45.34       22.06 ms     ±7.01%       22.01 ms       26.20 ms
150k Floki            23.20       43.11 ms     ±9.08%       43.18 ms       52.91 ms
341k Floki             5.21      191.90 ms     ±3.57%      193.53 ms      204.34 ms

Comparison:
10k ModestEx        1917.16
50k ModestEx         641.65 - 2.99x slower
200k ModestEx        446.78 - 4.29x slower
100k ModestEx        433.01 - 4.43x slower
10k Floki            341.27 - 5.62x slower
150k ModestEx        277.40 - 6.91x slower
341k ModestEx        128.38 - 14.93x slower
50k Floki             96.23 - 19.92x slower
200k Floki            47.01 - 40.78x slower
100k Floki            45.34 - 42.28x slower
150k Floki            23.20 - 82.65x slower
341k Floki             5.21 - 367.89x slower

```

## parse
```
Name                    ips        average  deviation         median         99th %
0.2k Floki          32.30 K       30.96 μs    ±13.18%          30 μs          40 μs
0.5k Floki          19.41 K       51.52 μs    ±12.30%          51 μs          67 μs
0.2k ModestEx        6.51 K      153.53 μs    ±29.25%         148 μs         259 μs
0.5k ModestEx        6.40 K      156.36 μs    ±30.05%         165 μs         268 μs
1k ModestEx          5.04 K      198.32 μs    ±21.56%         175 μs      317.99 μs
1k Floki             4.36 K      229.39 μs    ±10.05%         224 μs         294 μs

Comparison:
0.2k Floki          32.30 K
0.5k Floki          19.41 K - 1.66x slower
0.2k ModestEx        6.51 K - 4.96x slower
0.5k ModestEx        6.40 K - 5.05x slower
1k ModestEx          5.04 K - 6.41x slower
1k Floki             4.36 K - 7.41x slower

Name                    ips        average  deviation         median         99th %
2k ModestEx          3.40 K      294.38 μs    ±23.06%         270 μs         422 μs
2.5k ModestEx        3.33 K      300.08 μs    ±23.92%         278 μs         484 μs
5k ModestEx          2.68 K      373.48 μs    ±23.64%         320 μs      553.44 μs
3k ModestEx          2.55 K      393.01 μs    ±22.87%         437 μs      625.22 μs
2k Floki             1.92 K      522.34 μs     ±8.64%         502 μs      680.66 μs
2.5k Floki           1.50 K      666.57 μs    ±12.13%         642 μs         886 μs
3k Floki             1.24 K      807.43 μs     ±7.95%         781 μs     1017.23 μs
5k Floki             0.89 K     1125.27 μs     ±8.33%        1096 μs     1415.64 μs

Comparison:
2k ModestEx          3.40 K
2.5k ModestEx        3.33 K - 1.02x slower
5k ModestEx          2.68 K - 1.27x slower
3k ModestEx          2.55 K - 1.34x slower
2k Floki             1.92 K - 1.77x slower
2.5k Floki           1.50 K - 2.26x slower
3k Floki             1.24 K - 2.74x slower
5k Floki             0.89 K - 3.82x slower

Name                    ips        average  deviation         median         99th %
10k ModestEx        1413.13        0.71 ms    ±26.06%        0.78 ms        1.03 ms
50k ModestEx         576.25        1.74 ms    ±18.42%        1.67 ms        2.34 ms
10k Floki            460.42        2.17 ms     ±7.25%        2.15 ms        2.57 ms
100k ModestEx        382.04        2.62 ms     ±4.74%        2.56 ms        3.02 ms
200k ModestEx        340.36        2.94 ms     ±9.36%        2.91 ms        3.75 ms
150k ModestEx        226.68        4.41 ms     ±6.57%        4.36 ms        5.10 ms
50k Floki            127.79        7.83 ms     ±8.10%        7.73 ms        9.54 ms
341k ModestEx         95.63       10.46 ms     ±5.25%       10.38 ms       11.55 ms
200k Floki            67.65       14.78 ms     ±6.20%       15.18 ms       16.63 ms
100k Floki            67.44       14.83 ms     ±6.55%       15.13 ms       16.91 ms
150k Floki            38.33       26.09 ms    ±10.29%       24.41 ms       33.44 ms
341k Floki             5.49      182.04 ms     ±7.90%      187.05 ms      203.68 ms

Comparison:
10k ModestEx        1413.13
50k ModestEx         576.25 - 2.45x slower
10k Floki            460.42 - 3.07x slower
100k ModestEx        382.04 - 3.70x slower
200k ModestEx        340.36 - 4.15x slower
150k ModestEx        226.68 - 6.23x slower
50k Floki            127.79 - 11.06x slower
341k ModestEx         95.63 - 14.78x slower
200k Floki            67.65 - 20.89x slower
100k Floki            67.44 - 20.96x slower
150k Floki            38.33 - 36.87x slower
341k Floki             5.49 - 257.25x slower
```