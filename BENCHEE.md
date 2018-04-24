Operating System: Linux"
CPU Information: AMD FX(tm)-8300 Eight-Core Processor
Number of Available Cores: 8
Available memory: 15.66 GB
Elixir 1.6.1
Erlang 20.2

----

# modest_html OHNE threads

modest_html
  MyCORE_BUILD_WITHOUT_THREADS=YES
modest_ex
  build against local modest_html

## find
```
Name                    ips        average  deviation         median         99th %
0.2k Floki          18.85 K       53.05 μs    ±26.77%          52 μs          71 μs
0.5k Floki          13.42 K       74.54 μs    ±10.75%          75 μs          95 μs
0.2k Meeseeks        9.97 K      100.26 μs    ±40.82%          89 μs         262 μs
0.5k Meeseeks        7.06 K      141.69 μs    ±39.08%         133 μs         321 μs
0.2k ModestEx        4.96 K      201.55 μs    ±37.58%         227 μs         472 μs
0.5k ModestEx        4.79 K      208.71 μs    ±40.60%         223 μs         508 μs
1k ModestEx          4.42 K      226.36 μs    ±25.05%         216 μs      511.09 μs
1k Floki             2.58 K      388.27 μs    ±11.49%         379 μs         532 μs
1k Meeseeks          1.03 K      969.68 μs    ±23.04%        1012 μs        1369 μs

Name                    ips        average  deviation         median         99th %
2k ModestEx         2768.76        0.36 ms    ±36.63%        0.32 ms        0.92 ms
2.5k ModestEx       2489.53        0.40 ms    ±39.79%        0.34 ms        1.01 ms
3k ModestEx         2204.34        0.45 ms    ±39.82%        0.39 ms        1.14 ms
5k ModestEx         2027.67        0.49 ms    ±39.20%        0.42 ms        1.21 ms
2k Floki            1105.64        0.91 ms     ±9.41%        0.89 ms        1.18 ms
2.5k Floki           845.28        1.18 ms     ±8.98%        1.17 ms        1.47 ms
3k Floki             696.26        1.44 ms     ±8.19%        1.42 ms        1.74 ms
5k Floki             575.21        1.74 ms     ±9.05%        1.75 ms        2.26 ms
2k Meeseeks          427.74        2.34 ms    ±14.28%        2.44 ms        2.95 ms
2.5k Meeseeks        344.77        2.90 ms    ±16.45%        3.09 ms        3.76 ms
3k Meeseeks          301.85        3.31 ms    ±19.59%        3.58 ms        4.31 ms
5k Meeseeks          288.52        3.47 ms    ±19.96%        3.41 ms        4.69 ms

Name                    ips        average  deviation         median         99th %
10k ModestEx        1834.75        0.55 ms    ±24.29%        0.53 ms        1.02 ms
50k ModestEx         750.78        1.33 ms     ±8.24%        1.31 ms        1.59 ms
100k ModestEx        395.34        2.53 ms    ±21.90%        2.46 ms        6.30 ms
200k ModestEx        385.14        2.60 ms    ±19.83%        2.50 ms        5.82 ms
10k Floki            322.78        3.10 ms     ±7.73%        3.07 ms        3.68 ms
150k ModestEx        246.54        4.06 ms    ±16.83%        3.99 ms        7.91 ms
10k Meeseeks         166.76        6.00 ms    ±25.16%        6.03 ms        8.52 ms
341k ModestEx        114.09        8.77 ms    ±11.36%        8.62 ms       14.97 ms
50k Floki             87.90       11.38 ms     ±9.81%       11.18 ms       16.14 ms
50k Meeseeks          74.18       13.48 ms    ±21.23%       13.50 ms       20.57 ms
100k Meeseeks         50.80       19.68 ms    ±21.84%       19.76 ms       29.44 ms
200k Meeseeks         50.09       19.97 ms    ±22.05%       19.89 ms       30.24 ms
100k Floki            45.41       22.02 ms     ±8.26%       21.78 ms       29.08 ms
200k Floki            44.94       22.25 ms     ±9.41%       21.78 ms       31.27 ms
160k Meeseeks         26.15       38.24 ms    ±12.09%       37.95 ms       48.42 ms
150k Floki            22.79       43.87 ms    ±10.95%       43.37 ms       60.52 ms
341k Meeseeks         16.02       62.42 ms     ±8.57%       61.96 ms       72.09 ms
341k Floki             4.75      210.56 ms     ±8.37%      204.14 ms      255.33 ms
```

## parse
```
Name                    ips        average  deviation         median         99th %
0.2k Floki          30.12 K       33.20 μs    ±19.29%          33 μs          45 μs
0.5k Floki          18.52 K       54.00 μs    ±20.94%          54 μs          68 μs
0.2k Meeseeks        9.51 K      105.12 μs    ±46.53%          92 μs         260 μs
0.5k Meeseeks        8.95 K      111.68 μs    ±76.43%          96 μs         281 μs
0.2k ModestEx        5.99 K      167.04 μs    ±35.64%         174 μs         385 μs
0.5k ModestEx        5.88 K      170.12 μs    ±35.69%         182 μs         403 μs
1k ModestEx          4.04 K      247.58 μs    ±37.13%         208 μs      585.22 μs
1k Floki             3.95 K      253.02 μs    ±11.38%         252 μs      345.11 μs
1k Meeseeks          1.35 K      738.76 μs    ±30.52%         707 μs     1228.42 μs

Name                    ips        average  deviation         median         99th %
2k ModestEx          3.66 K      273.39 μs    ±31.93%         261 μs      688.36 μs
2.5k ModestEx        3.12 K      320.18 μs    ±34.15%         296 μs      840.60 μs
5k ModestEx          2.53 K      395.07 μs    ±27.88%         370 μs         972 μs
3k ModestEx          2.48 K      402.85 μs    ±38.28%         343 μs         995 μs
2k Floki             1.82 K      548.21 μs    ±10.19%         541 μs      727.15 μs
2.5k Floki           1.39 K      721.22 μs    ±11.27%         727 μs      972.88 μs
3k Floki             1.16 K      864.96 μs    ±10.24%         857 μs        1150 μs
5k Floki             0.85 K     1182.84 μs     ±8.99%        1195 μs     1479.80 μs
2k Meeseeks          0.58 K     1729.66 μs    ±23.73%        1817 μs     2488.88 μs
2.5k Meeseeks        0.47 K     2121.14 μs    ±22.62%     2046.50 μs     3035.25 μs
3k Meeseeks          0.38 K     2656.23 μs    ±22.41%        2884 μs     3596.88 μs
5k Meeseeks          0.36 K     2818.76 μs    ±23.76%        2746 μs     4222.80 μs

Name                    ips        average  deviation         median         99th %
10k ModestEx        1528.29        0.65 ms    ±31.08%        0.59 ms        1.61 ms
50k ModestEx         535.97        1.87 ms    ±24.45%        1.78 ms        4.47 ms
10k Floki            434.66        2.30 ms     ±7.35%        2.32 ms        2.74 ms
100k ModestEx        351.26        2.85 ms    ±13.38%        2.80 ms        3.76 ms
200k ModestEx        331.01        3.02 ms    ±20.43%        2.94 ms        7.06 ms
150k ModestEx        200.72        4.98 ms    ±17.21%        4.90 ms        9.94 ms
10k Meeseeks         197.76        5.06 ms    ±27.63%        5.12 ms        7.39 ms
50k Floki            121.50        8.23 ms     ±9.90%        8.05 ms       10.50 ms
50k Meeseeks          94.38       10.60 ms    ±26.37%       10.12 ms       17.26 ms
341k ModestEx         90.15       11.09 ms     ±6.59%       11.03 ms       13.52 ms
100k Floki            63.68       15.70 ms     ±6.32%       15.87 ms       18.60 ms
200k Floki            61.87       16.16 ms     ±7.64%       16.16 ms       21.48 ms
100k Meeseeks         60.04       16.66 ms    ±18.43%       16.59 ms       22.27 ms
200k Meeseeks         59.92       16.69 ms    ±20.10%       16.39 ms       24.13 ms
150k Floki            36.30       27.55 ms    ±10.33%       26.33 ms       38.26 ms
150k Meeseeks         34.53       28.96 ms    ±10.70%       28.96 ms       37.00 ms
341k Meeseeks         22.55       44.35 ms     ±8.76%       44.42 ms       53.19 ms
341k Floki             5.38      185.97 ms     ±7.25%      189.37 ms      208.57 ms

```

---

# modest_html MIT threads

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