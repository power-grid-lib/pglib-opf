# Baseline Results
This section presents the results of running 
[PowerModels.jl](https://github.com/lanl-ansi/PowerModels.jl) 
on the OPF test cases from the
[PGLib Archive](https://github.com/power-grid-lib/pglib-opf). 
providing baseline results for these test cases. All models were solved using 
[IPOPT](https://link.springer.com/article/10.1007/s10107-004-0559-y).

Note that the displayed solve times
in this experiment include Julia's JIT time.
Excluding the JIT time will reduce the runtime by 2-5 seconds.

## Software Versions
**[PowerModels.jl](https://github.com/lanl-ansi/PowerModels.jl):** v0.3.1, 4488d66ae45c2ad523c1514a384ae4cb15242e2b

**[Ipopt.jl](https://github.com/JuliaOpt/Ipopt.jl):** v0.2.6, 959b9c67e396a6e2307fc022d26b0d95692ee6a4

**[PGLib OPF](https://github.com/power-grid-lib/pglib-opf):** none, b61d597e309ff7d32eb1e6a1d1c5e866ef7143a7

**Hardware:** Dual Intel 2.10GHz CPUs, 128GB RAM


## Typical Operating Conditions (TYP)
| **Case Name** | **Nodes** | **Edges** | **DC (\$/h)** | **AC (\$/h)** | **QC Gap (%)** | **SOC Gap (%)** | **DC Time (sec.)** | **AC Time (sec.)** | **QC Time (sec.)** | **SOC Time (sec.)** |
| ------------- | --------- | --------- | ------------- | ------------- | -------------- | --------------- | ------------------ | ------------------ | ------------------ | ------------------- |
| pglib_opf_case3_lmbd | 3 | 3 | 5.6959e+03 | 5.8126e+03 | 1.22 | 1.32 | 2 | 5 | 2 | 2 |
| pglib_opf_case5_pjm | 5 | 6 | 1.7480e+04 | 1.7552e+04 | 14.55 | 14.55 | 2 | 5 | 2 | 2 |
| pglib_opf_case14_ieee | 14 | 20 | 1.5001e+02 | 1.5927e+02 | 0.11 | 0.11 | 2 | 5 | 2 | 2 |
| pglib_opf_case24_ieee_rts | 24 | 38 | 6.1001e+04 | 6.3352e+04 | 0.02 | 0.02 | 2 | 5 | 3 | 3 |
| pglib_opf_case30_as | 30 | 41 | 7.6760e+02 | 8.0313e+02 | 0.06 | 0.06 | 2 | 5 | 3 | 2 |
| pglib_opf_case30_fsr | 30 | 41 | 5.6521e+02 | 5.7577e+02 | 0.39 | 0.39 | 2 | 5 | 3 | 2 |
| pglib_opf_case30_ieee | 30 | 41 | 2.5965e+02 | 2.7982e+02 | 9.43 | 9.46 | 2 | 5 | 2 | 2 |
| pglib_opf_case39_epri | 39 | 46 | 4.2325e+03 | 4.2797e+03 | 0.54 | 0.54 | 2 | 5 | 3 | 2 |
| pglib_opf_case57_ieee | 57 | 80 | 1.0751e+03 | 1.1567e+03 | 0.13 | 0.13 | 2 | 5 | 3 | 2 |
| pglib_opf_case73_ieee_rts | 73 | 120 | 1.8300e+05 | 1.8976e+05 | 0.04 | 0.04 | 3 | 5 | 3 | 3 |
| pglib_opf_case89_pegase | 89 | 210 | 5.7334e+03 | 5.8198e+03 | 0.17 | 0.17 | 2 | 5 | 4 | 3 |
| pglib_opf_case118_ieee | 118 | 186 | 3.0845e+03 | 3.2209e+03 | 1.16 | 1.24 | 2 | 5 | 3 | 3 |
| pglib_opf_case162_ieee_dtc | 162 | 284 | 3.2424e+03 | 3.4496e+03 | 5.85 | 5.96 | 2 | 6 | 4 | 3 |
| pglib_opf_case200_pserc | 200 | 245 | 3.6304e+04 | 3.6748e+04 | 0.02 | 0.02 | 2 | 5 | 4 | 3 |
| pglib_opf_case240_pserc | 240 | 448 | 1.0198e+05 | 1.0379e+05 | 2.42 | 2.46 | 3 | 10 | 11 | 5 |
| pglib_opf_case300_ieee | 300 | 411 | 1.6304e+04 | 1.7689e+04 | 2.38 | 2.42 | 2 | 6 | 5 | 3 |
| pglib_opf_case1354_pegase | 1354 | 1991 | 7.3060e+04 | 7.4069e+04 | 0.08 | 0.08 | 3 | 10 | 24 | 24 |
| pglib_opf_case1888_rte | 1888 | 2531 | 5.9110e+04 | 5.9805e+04 | 0.38 | 0.38 | 3 | 43 | 22 | 174 |
| pglib_opf_case1951_rte | 1951 | 2596 | 8.0656e+04 | 8.1738e+04 | 0.07 | 0.08 | 3 | 25 | 26 | 26 |
| pglib_opf_case2383wp_mp | 2383 | 2896 | 1.8041e+06 | 1.8685e+06 | 0.99 | 1.05 | 4 | 17 | 32 | 19 |
| pglib_opf_case2736sp_mp | 2736 | 3504 | 1.2760e+06 | 1.3079e+06 | 0.29 | 0.30 | 3 | 15 | 36 | 15 |
| pglib_opf_case2737sop_mp | 2737 | 3506 | 7.6401e+05 | 7.7763e+05 | 0.25 | 0.26 | 3 | 13 | 30 | 12 |
| pglib_opf_case2746wop_mp | 2746 | 3514 | 1.1782e+06 | 1.2083e+06 | 0.36 | 0.37 | 3 | 14 | 32 | 13 |
| pglib_opf_case2746wp_mp | 2746 | 3514 | 1.5814e+06 | 1.6318e+06 | 0.32 | 0.33 | 3 | 15 | 33 | 15 |
| pglib_opf_case2848_rte | 2848 | 3776 | 5.2562e+04 | 5.3022e+04 | 0.08 | 0.08 | 3 | 92 | 32 | 255 |
| pglib_opf_case2868_rte | 2868 | 3808 | 7.8826e+04 | 7.9795e+04 | 0.07 | 0.07 | 3 | 45 | 43 | 24 |
| pglib_opf_case2869_pegase | 2869 | 4582 | 1.3245e+05 | 1.3400e+05 | 0.09 | 0.09 | 3 | 17 | 55 | 48 |
| pglib_opf_case3012wp_mp | 3012 | 3572 | 2.5090e+06 | 2.6008e+06 | 0.98 | 1.03 | 4 | 20 | 46 | 25 |
| pglib_opf_case3120sp_mp | 3120 | 3693 | 2.0880e+06 | 2.1457e+06 | 0.54 | 0.55 | 4 | 20 | 45 | 18 |
| pglib_opf_case3375wp_mp | 3375 | 4161 | 7.3170e+06 | 7.4357e+06 | 0.50 | 0.52 | 5 | 25 | 355 | 75 |
| pglib_opf_case6468_rte | 6468 | 9000 | 8.5266e+04 | 8.6829e+04 | 0.23 | 0.23 | 4 | 124 | 200 | 586 |
| pglib_opf_case6470_rte | 6470 | 9005 | 9.6592e+04 | 9.8348e+04 | 0.17 | 0.18 | 4 | 101 | 183 | 102 |
| pglib_opf_case6495_rte | 6495 | 9019 | 1.0392e+05 | 1.0632e+05 | 0.49 | 0.49 | 4 | 75 | 169 | 93 |
| pglib_opf_case6515_rte | 6515 | 9037 | 1.0726e+05 | 1.0987e+05 | 0.43 | 0.43 | 4 | 69 | 149 | 1249 |
| pglib_opf_case9241_pegase | 9241 | 16049 | 3.1241e+05 | 3.1591e+05 | n.d. | 1.64 | 5 | 172 | n.d. | 576 |
| pglib_opf_case13659_pegase | 13659 | 20467 | 3.8177e+05 | 3.8612e+05 | n.d. | 1.43 | 6 | 607 | n.d. | 4940 |


## Congested Operating Conditions (API)
| **Case Name** | **Nodes** | **Edges** | **DC (\$/h)** | **AC (\$/h)** | **QC Gap (%)** | **SOC Gap (%)** | **DC Time (sec.)** | **AC Time (sec.)** | **QC Time (sec.)** | **SOC Time (sec.)** |
| ------------- | --------- | --------- | ------------- | ------------- | -------------- | --------------- | ------------------ | ------------------ | ------------------ | ------------------- |
| pglib_opf_case3_lmbd__api | 3 | 3 | 1.5731e+03 | 1.7008e+03 | -- | 15.06 | 2 | 5 | 2 | 2 |
| pglib_opf_case5_pjm__api | 5 | 6 | 2.0443e+03 | 2.0570e+03 | 0.70 | 0.70 | 2 | 5 | 2 | 2 |
| pglib_opf_case14_ieee__api | 14 | 20 | 5.9224e+02 | 6.5196e+02 | 2.21 | 2.21 | 2 | 5 | 2 | 2 |
| pglib_opf_case24_ieee_rts__api | 24 | 38 | 4.7416e+03 | 5.6137e+03 | 11.88 | 15.46 | 2 | 5 | 3 | 2 |
| pglib_opf_case30_as__api | 30 | 41 | 1.1113e+03 | 1.3504e+03 | 27.28 | 27.89 | 2 | 5 | 3 | 2 |
| pglib_opf_case30_fsr__api | 30 | 41 | 1.9378e+02 | 2.2917e+02 | 11.40 | 11.40 | 2 | 5 | 3 | 2 |
| pglib_opf_case30_ieee__api | 30 | 41 | 4.8155e+02 | 5.3038e+02 | 2.33 | 2.33 | 2 | 5 | 2 | 2 |
| pglib_opf_case39_epri__api | 39 | 46 | 7.6835e+03 | 7.8981e+03 | 0.80 | 0.80 | 2 | 5 | 3 | 2 |
| pglib_opf_case57_ieee__api | 57 | 80 | 1.1187e+03 | 1.1492e+03 | 0.15 | 0.15 | 2 | 5 | 3 | 3 |
| pglib_opf_case73_ieee_rts__api | 73 | 120 | 1.5849e+04 | 1.8074e+04 | 6.52 | 11.07 | 2 | 5 | 3 | 3 |
| pglib_opf_case89_pegase__api | 89 | 210 | 1.0079e+04 | 1.2911e+04 | 46.47 | 46.47 | 2 | 6 | 4 | 3 |
| pglib_opf_case118_ieee__api | 118 | 186 | 6.1856e+03 | 8.4462e+03 | 25.79 | 25.85 | 2 | 6 | 3 | 3 |
| pglib_opf_case162_ieee_dtc__api | 162 | 284 | 4.8241e+03 | 5.2686e+03 | 4.66 | 4.69 | 2 | 6 | 4 | 3 |
| pglib_opf_case200_pserc__api | 200 | 245 | 3.1779e+03 | 3.2184e+03 | 0.02 | 0.02 | 2 | 5 | 4 | 3 |
| pglib_opf_case240_pserc__api | 240 | 448 | 1.4184e+05 | 1.4384e+05 | 0.55 | 0.58 | 3 | 10 | 13 | 5 |
| pglib_opf_case300_ieee__api | 300 | 411 | 2.2120e+04 | 2.3579e+04 | 1.06 | 1.17 | 2 | 6 | 5 | 3 |
| pglib_opf_case1354_pegase__api | 1354 | 1991 | 5.4777e+04 | 5.6643e+04 | 0.54 | 0.55 | 3 | 12 | 20 | 10 |
| pglib_opf_case1888_rte__api | 1888 | 2531 | 6.2555e+04 | 6.4293e+04 | 0.69 | 0.69 | 3 | 17 | 43 | 16 |
| pglib_opf_case1951_rte__api | 1951 | 2596 | 7.2810e+04 | 7.4940e+04 | 0.27 | 0.28 | 3 | 17 | 47 | 17 |
| pglib_opf_case2383wp_mp__api | 2383 | 2896 | 2.4276e+04 | 2.4813e+04 | 1.23 | 1.25 | 3 | 14 | 30 | 12 |
| pglib_opf_case2736sp_mp__api | 2736 | 3504 | 2.4180e+04 | 2.4641e+04 | 1.26 | 1.27 | 3 | 15 | 33 | 14 |
| pglib_opf_case2737sop_mp__api | 2737 | 3506 | 1.9355e+04 | 1.9814e+04 | 0.87 | 0.88 | 3 | 15 | 34 | 14 |
| pglib_opf_case2746wop_mp__api | 2746 | 3514 | 2.1658e+04 | 2.1992e+04 | 0.37 | 0.37 | 3 | 15 | 33 | 14 |
| pglib_opf_case2746wp_mp__api | 2746 | 3514 | 2.5113e+04 | 2.5536e+04 | 0.60 | 0.61 | 3 | 15 | 32 | 14 |
| pglib_opf_case2848_rte__api | 2848 | 3776 | 4.8167e+04 | 4.9194e+04 | 0.20 | 0.20 | 3 | 46 | 49 | 19 |
| pglib_opf_case2868_rte__api | 2868 | 3808 | 6.5153e+04 | 6.7147e+04 | 0.21 | 0.22 | 3 | 39 | 53 | 21 |
| pglib_opf_case2869_pegase__api | 2869 | 4582 | 9.2212e+04 | 9.4770e+04 | 1.05 | 1.06 | 4 | 24 | 61 | 22 |
| pglib_opf_case3012wp_mp__api | 3012 | 3572 | 2.7718e+04 | 2.8347e+04 | 0.66 | 0.69 | 4 | 16 | 38 | 17 |
| pglib_opf_case3120sp_mp__api | 3120 | 3693 | 2.2368e+04 | 2.2912e+04 | 2.57 | 2.60 | 4 | 20 | 36 | 16 |
| pglib_opf_case3375wp_mp__api | 3375 | 4161 | 4.7258e+04 | 4.8111e+04 | 0.67 | 0.69 | 4 | 20 | 181 | 160 |
| pglib_opf_case6468_rte__api | 6468 | 9000 | 7.1720e+04 | 7.4323e+04 | 1.27 | 1.28 | 5 | 143 | 196 | 63 |
| pglib_opf_case6470_rte__api | 6470 | 9005 | 8.8029e+04 | 9.1699e+04 | 1.00 | 1.01 | 5 | 81 | 156 | 59 |
| pglib_opf_case6495_rte__api | 6495 | 9019 | 8.6377e+04 | 9.0420e+04 | 0.98 | 1.00 | 5 | 89 | 202 | 696 |
| pglib_opf_case6515_rte__api | 6515 | 9037 | 9.4406e+04 | 9.9094e+04 | 0.88 | 0.90 | 5 | 95 | 197 | 62 |
| pglib_opf_case9241_pegase__api | 9241 | 16049 | 2.2313e+05 | 2.3003e+05 | n.d. | 3.31 | 10 | 151 | n.d. | 134 |
| pglib_opf_case13659_pegase__api | 13659 | 20467 | 3.0290e+05 | 3.1071e+05 | n.d. | 1.79 | 10 | 148 | n.d. | 221 |


## Small Angle Difference Conditions (SAD)
| **Case Name** | **Nodes** | **Edges** | **DC (\$/h)** | **AC (\$/h)** | **QC Gap (%)** | **SOC Gap (%)** | **DC Time (sec.)** | **AC Time (sec.)** | **QC Time (sec.)** | **SOC Time (sec.)** |
| ------------- | --------- | --------- | ------------- | ------------- | -------------- | --------------- | ------------------ | ------------------ | ------------------ | ------------------- |
| pglib_opf_case3_lmbd__sad | 3 | 3 | 5.8560e+03 | 5.9593e+03 | 1.00 | 3.75 | 2 | 5 | 2 | 2 |
| pglib_opf_case5_pjm__sad | 5 | 6 | inf. | 2.6115e+04 | 0.99 | 3.61 | 2 | 5 | 2 | 2 |
| pglib_opf_case14_ieee__sad | 14 | 20 | inf. | 1.6926e+02 | 5.76 | 5.85 | 2 | 5 | 2 | 2 |
| pglib_opf_case24_ieee_rts__sad | 24 | 38 | 7.8163e+04 | 7.6943e+04 | 2.66 | 9.35 | 2 | 5 | 3 | 2 |
| pglib_opf_case30_as__sad | 30 | 41 | inf. | 8.9749e+02 | 2.29 | 7.87 | 2 | 5 | 3 | 2 |
| pglib_opf_case30_fsr__sad | 30 | 41 | inf. | 5.7679e+02 | 0.41 | 0.47 | 2 | 5 | 3 | 2 |
| pglib_opf_case30_ieee__sad | 30 | 41 | inf. | 2.7982e+02 | 2.99 | 4.81 | 2 | 5 | 3 | 2 |
| pglib_opf_case39_epri__sad | 39 | 46 | 4.6585e+03 | 4.5850e+03 | 0.05 | 0.48 | 2 | 5 | 3 | 2 |
| pglib_opf_case57_ieee__sad | 57 | 80 | inf. | 1.1795e+03 | 0.29 | 0.57 | 2 | 5 | 3 | 2 |
| pglib_opf_case73_ieee_rts__sad | 73 | 120 | 2.3291e+05 | 2.2775e+05 | 2.28 | 6.53 | 3 | 5 | 3 | 3 |
| pglib_opf_case89_pegase__sad | 89 | 210 | inf. | 5.8198e+03 | 0.13 | 0.14 | 2 | 5 | 3 | 3 |
| pglib_opf_case118_ieee__sad | 118 | 186 | inf. | 3.6291e+03 | 10.54 | 12.08 | 3 | 5 | 3 | 3 |
| pglib_opf_case162_ieee_dtc__sad | 162 | 284 | 3.4171e+03 | 3.4724e+03 | 6.34 | 6.58 | 2 | 6 | 4 | 3 |
| pglib_opf_case200_pserc__sad | 200 | 245 | inf. | 4.0991e+04 | 0.14 | 0.15 | 3 | 6 | 4 | 3 |
| pglib_opf_case240_pserc__sad | 240 | 448 | inf. | 1.0686e+05 | 4.70 | 5.26 | 3 | 10 | 11 | 5 |
| pglib_opf_case300_ieee__sad | 300 | 411 | 1.6591e+04 | 1.7700e+04 | 2.22 | 2.37 | 2 | 6 | 5 | 3 |
| pglib_opf_case1354_pegase__sad | 1354 | 1991 | inf. | 7.4070e+04 | 0.07 | 0.08 | 3 | 10 | 20 | 17 |
| pglib_opf_case1888_rte__sad | 1888 | 2531 | 5.9110e+04 | 5.9806e+04 | 0.37 | 0.38 | 3 | 47 | 25 | 172 |
| pglib_opf_case1951_rte__sad | 1951 | 2596 | inf. | 8.1785e+04 | 0.11 | 0.13 | 5 | 28 | 28 | 346 |
| pglib_opf_case2383wp_mp__sad | 2383 | 2896 | inf. | 1.9165e+06 | 2.13 | 3.12 | 8 | 20 | 32 | 18 |
| pglib_opf_case2736sp_mp__sad | 2736 | 3504 | inf. | 1.3294e+06 | 1.52 | 1.80 | 6 | 20 | 35 | 16 |
| pglib_opf_case2737sop_mp__sad | 2737 | 3506 | inf. | 7.9267e+05 | 1.92 | 2.10 | 6 | 17 | 32 | 13 |
| pglib_opf_case2746wop_mp__sad | 2746 | 3514 | inf. | 1.2344e+06 | 1.99 | 2.37 | 6 | 16 | 28 | 14 |
| pglib_opf_case2746wp_mp__sad | 2746 | 3514 | inf. | 1.6674e+06 | 1.66 | 2.21 | 7 | 17 | 32 | 17 |
| pglib_opf_case2848_rte__sad | 2848 | 3776 | inf. | 5.3031e+04 | 0.08 | 0.09 | 5 | 95 | 39 | 27 |
| pglib_opf_case2868_rte__sad | 2868 | 3808 | inf. | 7.9814e+04 | 0.07 | 0.09 | 7 | 28 | 45 | 26 |
| pglib_opf_case2869_pegase__sad | 2869 | 4582 | inf. | 1.3402e+05 | 0.09 | 0.10 | 11 | 19 | 66 | 135 |
| pglib_opf_case3012wp_mp__sad | 3012 | 3572 | inf. | 2.6213e+06 | 1.40 | 1.61 | 10 | 22 | 49 | 20 |
| pglib_opf_case3120sp_mp__sad | 3120 | 3693 | inf. | 2.1755e+06 | 1.40 | 1.59 | 11 | 24 | 52 | 21 |
| pglib_opf_case3375wp_mp__sad | 3375 | 4161 | 7.3197e+06 | 7.4357e+06 | 0.47 | 0.52 | 5 | 26 | 127 | 64 |
| pglib_opf_case6468_rte__sad | 6468 | 9000 | 8.5266e+04 | 8.6829e+04 | 0.21 | 0.21 | 4 | 160 | 205 | 366 |
| pglib_opf_case6470_rte__sad | 6470 | 9005 | 9.6592e+04 | 9.8357e+04 | 0.16 | 0.17 | 4 | 96 | 139 | 588 |
| pglib_opf_case6495_rte__sad | 6495 | 9019 | 1.0392e+05 | 1.0632e+05 | 0.48 | 0.49 | 4 | 73 | 207 | 93 |
| pglib_opf_case6515_rte__sad | 6515 | 9037 | 1.0726e+05 | 1.0995e+05 | 0.49 | 0.51 | 4 | 71 | 155 | 114 |
| pglib_opf_case9241_pegase__sad | 9241 | 16049 | inf. | 3.1592e+05 | n.d. | 0.82 | 17 | 150 | n.d. | 975 |
| pglib_opf_case13659_pegase__sad | 13659 | 20467 | inf. | 3.8614e+05 | n.d. | 0.71 | 25 | 528 | n.d. | 789 |


