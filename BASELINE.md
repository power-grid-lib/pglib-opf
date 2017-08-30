# Baseline Results
This section presents the results of running 
[PowerModels.jl](https://github.com/lanl-ansi/PowerModels.jl) 
on the OPF test cases from the
[PGLib Archive](https://github.com/power-grid-lib/pglib-opf). 
providing baseline results for these test cases. All models were solved using 
[IPOPT](https://link.springer.com/article/10.1007/s10107-004-0559-y).

Note that the displayed solve times are only approximate
and in this experiment include Julia's JIT time.
Excluding the JIT time will reduce the runtime by 2-5 seconds.
Using a better linear solver (e.g. [HSL](http://www.hsl.rl.ac.uk/ipopt/)) will further reduce the runtime by 4-10x.

## Software Versions
**[PowerModels.jl](https://github.com/lanl-ansi/PowerModels.jl):** v0.3.4-27-g115de85, 115de853fd4103b712d051e902540e7fa2b627be

**[Ipopt.jl](https://github.com/JuliaOpt/Ipopt.jl):** v0.2.6, 959b9c67e396a6e2307fc022d26b0d95692ee6a4

**[PGLib OPF](https://github.com/power-grid-lib/pglib-opf):** none, 1d0aaefb7f9141fd22907d8a67e5109f43daf5ee

**Hardware:** Dual Intel 2.10GHz CPUs, 128GB RAM


## Typical Operating Conditions (TYP)
| **Case Name** | **Nodes** | **Edges** | **DC (\$/h)** | **AC (\$/h)** | **QC Gap (%)** | **SOC Gap (%)** | **DC Time (sec.)** | **AC Time (sec.)** | **QC Time (sec.)** | **SOC Time (sec.)** |
| ------------- | --------- | --------- | ------------- | ------------- | -------------- | --------------- | ------------------ | ------------------ | ------------------ | ------------------- |
| pglib_opf_case3_lmbd | 3 | 3 | 5.6959e+03 | 5.8126e+03 | 1.22 | 1.32 | 2 | 5 | 2 | 2 |
| pglib_opf_case5_pjm | 5 | 6 | 1.7480e+04 | 1.7552e+04 | 14.55 | 14.55 | 2 | 5 | 2 | 2 |
| pglib_opf_case14_ieee | 14 | 20 | 5.9257e+03 | 6.2913e+03 | 0.11 | 0.11 | 2 | 5 | 2 | 2 |
| pglib_opf_case24_ieee_rts | 24 | 38 | 6.1001e+04 | 6.3352e+04 | 0.02 | 0.02 | 2 | 5 | 2 | 2 |
| pglib_opf_case30_as | 30 | 41 | 7.6760e+02 | 8.0313e+02 | 0.06 | 0.06 | 2 | 5 | 2 | 2 |
| pglib_opf_case30_fsr | 30 | 41 | 5.6521e+02 | 5.7577e+02 | 0.39 | 0.39 | 2 | 5 | 2 | 2 |
| pglib_opf_case30_ieee | 30 | 41 | 1.1081e+04 | 1.1974e+04 | 10.78 | 10.81 | 2 | 5 | 2 | 2 |
| pglib_opf_case39_epri | 39 | 46 | 1.4145e+05 | 1.4298e+05 | 0.49 | 0.49 | 2 | 5 | 2 | 2 |
| pglib_opf_case57_ieee | 57 | 80 | 3.5441e+04 | 3.9323e+04 | 0.46 | 0.46 | 2 | 5 | 2 | 2 |
| pglib_opf_case73_ieee_rts | 73 | 120 | 1.8300e+05 | 1.8976e+05 | 0.04 | 0.04 | 2 | 5 | 2 | 2 |
| pglib_opf_case89_pegase | 89 | 210 | 1.1224e+05 | 1.1633e+05 | 0.74 | 0.75 | 2 | 5 | 3 | 3 |
| pglib_opf_case118_ieee | 118 | 186 | 1.0962e+05 | 1.1580e+05 | 2.20 | 2.27 | 2 | 5 | 3 | 2 |
| pglib_opf_case162_ieee_dtc | 162 | 284 | 1.1666e+05 | 1.2615e+05 | 7.54 | 7.67 | 2 | 5 | 3 | 3 |
| pglib_opf_case200_pserc | 200 | 245 | 3.6304e+04 | 3.6748e+04 | 0.02 | 0.02 | 2 | 5 | 3 | 2 |
| pglib_opf_case240_pserc | 240 | 448 | 3.5056e+06 | 3.5700e+06 | 3.81 | 3.92 | 2 | 9 | 12 | 5 |
| pglib_opf_case300_ieee | 300 | 411 | 5.9324e+05 | 6.6422e+05 | 2.56 | 2.60 | 2 | 6 | 5 | 3 |
| pglib_opf_case1354_pegase | 1354 | 1991 | 1.3140e+06 | 1.3640e+06 | 2.40 | 2.41 | 3 | 12 | 21 | 10 |
| pglib_opf_case1888_rte | 1888 | 2531 | 1.5111e+06 | 1.5654e+06 | 1.82 | 1.82 | 3 | 25 | 29 | 18 |
| pglib_opf_case1951_rte | 1951 | 2596 | 2.3128e+06 | 2.3753e+06 | 0.12 | 0.13 | 3 | 29 | 32 | 18 |
| pglib_opf_case2383wp_k | 2383 | 2896 | 1.8041e+06 | 1.8685e+06 | 0.99 | 1.05 | 4 | 17 | 32 | 18 |
| pglib_opf_case2736sp_k | 2736 | 3504 | 1.2760e+06 | 1.3079e+06 | 0.29 | 0.30 | 3 | 16 | 35 | 14 |
| pglib_opf_case2737sop_k | 2737 | 3506 | 7.6401e+05 | 7.7763e+05 | 0.25 | 0.26 | 3 | 13 | 29 | 12 |
| pglib_opf_case2746wop_k | 2746 | 3514 | 1.1782e+06 | 1.2083e+06 | 0.36 | 0.37 | 2 | 14 | 32 | 13 |
| pglib_opf_case2746wp_k | 2746 | 3514 | 1.5814e+06 | 1.6318e+06 | 0.32 | 0.33 | 3 | 15 | 31 | 15 |
| pglib_opf_case2848_rte | 2848 | 3776 | 1.3636e+06 | 1.3847e+06 | 0.12 | 0.12 | 3 | 32 | 50 | 23 |
| pglib_opf_case2868_rte | 2868 | 3808 | 2.2053e+06 | 2.2599e+06 | 0.11 | 0.11 | 3 | 33 | 52 | 27 |
| pglib_opf_case2869_pegase | 2869 | 4582 | 2.5166e+06 | 2.6050e+06 | 1.07 | 1.08 | 3 | 25 | 65 | 23 |
| pglib_opf_case3012wp_k | 3012 | 3572 | 2.5090e+06 | 2.6008e+06 | 0.98 | 1.03 | 4 | 20 | 46 | 25 |
| pglib_opf_case3120sp_k | 3120 | 3693 | 2.0880e+06 | 2.1457e+06 | 0.54 | 0.55 | 4 | 19 | 46 | 18 |
| pglib_opf_case3375wp_k | 3375 | 4161 | 7.3170e+06 | 7.4357e+06 | 0.50 | 0.52 | 4 | 25 | 153 | 307 |
| pglib_opf_case6468_rte | 6468 | 9000 | 2.1619e+06 | 2.2623e+06 | 1.07 | 1.08 | 5 | 116 | 316 | 82 |
| pglib_opf_case6470_rte | 6470 | 9005 | 2.4454e+06 | 2.5558e+06 | 1.95 | 1.96 | 6 | 69 | 181 | 172 |
| pglib_opf_case6495_rte | 6495 | 9019 | 2.8481e+06 | 3.4777e+06 | 16.73 | 16.76 | 7 | 122 | 220 | 76 |
| pglib_opf_case6515_rte | 6515 | 9037 | 2.8484e+06 | 3.1971e+06 | 7.86 | 7.87 | 7 | 106 | 173 | 73 |
| pglib_opf_case9241_pegase | 9241 | 16049 | 6.5179e+06 | 6.7747e+06 | 1.99 | 2.84 | 9 | 113 | 642 | 150 |
| pglib_opf_case13659_pegase | 13659 | 20467 | 1.0565e+07 | 1.0781e+07 | 0.95 | 1.35 | 11 | 199 | 735 | 192 |


## Congested Operating Conditions (API)
| **Case Name** | **Nodes** | **Edges** | **DC (\$/h)** | **AC (\$/h)** | **QC Gap (%)** | **SOC Gap (%)** | **DC Time (sec.)** | **AC Time (sec.)** | **QC Time (sec.)** | **SOC Time (sec.)** |
| ------------- | --------- | --------- | ------------- | ------------- | -------------- | --------------- | ------------------ | ------------------ | ------------------ | ------------------- |
| pglib_opf_case3_lmbd__api | 3 | 3 | 1.0444e+04 | 1.1242e+04 | 5.63 | 9.32 | 2 | 5 | 2 | 2 |
| pglib_opf_case5_pjm__api | 5 | 6 | 7.5433e+04 | 7.6377e+04 | 4.09 | 4.09 | 2 | 5 | 2 | 2 |
| pglib_opf_case14_ieee__api | 14 | 20 | 1.1586e+04 | 1.3311e+04 | 1.77 | 1.77 | 2 | 5 | 2 | 2 |
| pglib_opf_case24_ieee_rts__api | 24 | 38 | 1.2336e+05 | 1.3495e+05 | 13.01 | 17.87 | 2 | 5 | 2 | 2 |
| pglib_opf_case30_as__api | 30 | 41 | 3.0921e+03 | 4.9962e+03 | 44.61 | 44.61 | 2 | 5 | 2 | 2 |
| pglib_opf_case30_fsr__api | 30 | 41 | 6.7254e+02 | 7.0115e+02 | 2.76 | 2.76 | 2 | 5 | 2 | 2 |
| pglib_opf_case30_ieee__api | 30 | 41 | 2.1698e+04 | 2.4032e+04 | 3.73 | 3.73 | 2 | 5 | 2 | 2 |
| pglib_opf_case39_epri__api | 39 | 46 | 2.5216e+05 | 2.5721e+05 | 1.57 | 1.60 | 2 | 5 | 2 | 2 |
| pglib_opf_case57_ieee__api | 57 | 80 | 5.7032e+04 | 5.9274e+04 | 0.08 | 0.08 | 2 | 5 | 2 | 2 |
| pglib_opf_case73_ieee_rts__api | 73 | 120 | 3.6238e+05 | 4.2273e+05 | 11.07 | 12.89 | 2 | 5 | 3 | 2 |
| pglib_opf_case89_pegase__api | 89 | 210 | 1.2974e+05 | 1.4198e+05 | 8.13 | 8.14 | 2 | 6 | 4 | 2 |
| pglib_opf_case118_ieee__api | 118 | 186 | 2.9247e+05 | 3.1642e+05 | 28.63 | 28.70 | 2 | 5 | 3 | 2 |
| pglib_opf_case162_ieee_dtc__api | 162 | 284 | 1.3016e+05 | 1.4351e+05 | 5.44 | 5.49 | 2 | 5 | 3 | 2 |
| pglib_opf_case200_pserc__api | 200 | 245 | 3.9923e+04 | 4.0458e+04 | 0.02 | 0.02 | 2 | 5 | 3 | 2 |
| pglib_opf_case240_pserc__api | 240 | 448 | 5.3109e+06 | 5.3917e+06 | 0.80 | 0.83 | 2 | 10 | 18 | 6 |
| pglib_opf_case300_ieee__api | 300 | 411 | 7.3994e+05 | 7.7549e+05 | 0.88 | 0.95 | 2 | 5 | 5 | 3 |
| pglib_opf_case1354_pegase__api | 1354 | 1991 | 1.7485e+06 | 1.8041e+06 | 0.70 | 0.71 | 3 | 13 | 21 | 11 |
| pglib_opf_case1888_rte__api | 1888 | 2531 | 2.1930e+06 | 2.2566e+06 | 0.47 | 0.47 | 3 | 19 | 44 | 18 |
| pglib_opf_case1951_rte__api | 1951 | 2596 | 2.7027e+06 | 2.8005e+06 | 0.60 | 0.62 | 3 | 20 | 37 | 18 |
| pglib_opf_case2383wp_k__api | 2383 | 2896 | 2.7913e+05 | 2.7913e+05 | 0.01 | 0.01 | 2 | 9 | 11 | 5 |
| pglib_opf_case2736sp_k__api | 2736 | 3504 | 5.9774e+05 | 6.3847e+05 | 12.82 | 12.83 | 3 | 16 | 34 | 11 |
| pglib_opf_case2737sop_k__api | 2737 | 3506 | 3.7570e+05 | 4.0282e+05 | 10.00 | 10.01 | 3 | 16 | 30 | 10 |
| pglib_opf_case2746wop_k__api | 2746 | 3514 | 5.1166e+05 | 5.1166e+05 | 0.01 | 0.01 | 3 | 9 | 13 | 6 |
| pglib_opf_case2746wp_k__api | 2746 | 3514 | 5.8183e+05 | 5.8183e+05 | 0.01 | 0.00 | 3 | 11 | 18 | 8 |
| pglib_opf_case2848_rte__api | 2848 | 3776 | 1.6822e+06 | 1.7169e+06 | 0.18 | 0.18 | 3 | 51 | 52 | 25 |
| pglib_opf_case2868_rte__api | 2868 | 3808 | 2.6357e+06 | 2.7159e+06 | 0.19 | 0.20 | 3 | 43 | 56 | 22 |
| pglib_opf_case2869_pegase__api | 2869 | 4582 | 3.2154e+06 | 3.3185e+06 | 0.82 | 0.84 | 4 | 25 | 68 | 26 |
| pglib_opf_case3012wp_k__api | 3012 | 3572 | 7.2887e+05 | 7.2887e+05 | 0.00 | 0.00 | 3 | 11 | 20 | 8 |
| pglib_opf_case3120sp_k__api | 3120 | 3693 | 8.5997e+05 | 9.2026e+05 | 24.92 | 24.95 | 5 | 25 | 46 | 13 |
| pglib_opf_case3375wp_k__api | 3375 | 4161 | 5.7641e+06 | 5.8861e+06 | 9.46 | 9.55 | 6 | 24 | 68 | 43 |
| pglib_opf_case6468_rte__api | 6468 | 9000 | 2.6081e+06 | 2.7102e+06 | 0.41 | 0.43 | 5 | 121 | 185 | 88 |
| pglib_opf_case6470_rte__api | 6470 | 9005 | 3.0333e+06 | 3.1603e+06 | 0.83 | 0.84 | 5 | 84 | 154 | 73 |
| pglib_opf_case6495_rte__api | 6495 | 9019 | 3.4186e+06 | 3.6263e+06 | 3.25 | 3.28 | 6 | 113 | 169 | 75 |
| pglib_opf_case6515_rte__api | 6515 | 9037 | 3.3777e+06 | 3.5904e+06 | 2.54 | 2.56 | 6 | 95 | 203 | 69 |
| pglib_opf_case9241_pegase__api | 9241 | 16049 | 7.9822e+06 | 8.2656e+06 | 1.70 | 2.59 | 9 | 156 | 601 | 161 |
| pglib_opf_case13659_pegase__api | 13659 | 20467 | 1.0895e+07 | 1.1209e+07 | 1.21 | 1.91 | 11 | 157 | 703 | 233 |


## Small Angle Difference Conditions (SAD)
| **Case Name** | **Nodes** | **Edges** | **DC (\$/h)** | **AC (\$/h)** | **QC Gap (%)** | **SOC Gap (%)** | **DC Time (sec.)** | **AC Time (sec.)** | **QC Time (sec.)** | **SOC Time (sec.)** |
| ------------- | --------- | --------- | ------------- | ------------- | -------------- | --------------- | ------------------ | ------------------ | ------------------ | ------------------- |
| pglib_opf_case3_lmbd__sad | 3 | 3 | 5.8560e+03 | 5.9593e+03 | 1.42 | 3.75 | 2 | 5 | 2 | 2 |
| pglib_opf_case5_pjm__sad | 5 | 6 | inf. | 2.6115e+04 | 0.99 | 3.62 | 2 | 5 | 2 | 2 |
| pglib_opf_case14_ieee__sad | 14 | 20 | inf. | 6.7834e+03 | 7.16 | 7.21 | 2 | 5 | 2 | 2 |
| pglib_opf_case24_ieee_rts__sad | 24 | 38 | 7.8163e+04 | 7.6943e+04 | 2.93 | 9.56 | 2 | 5 | 2 | 2 |
| pglib_opf_case30_as__sad | 30 | 41 | inf. | 8.9749e+02 | 2.32 | 7.88 | 2 | 5 | 2 | 2 |
| pglib_opf_case30_fsr__sad | 30 | 41 | inf. | 5.7679e+02 | 0.41 | 0.47 | 2 | 5 | 2 | 2 |
| pglib_opf_case30_ieee__sad | 30 | 41 | inf. | 1.1974e+04 | 3.42 | 5.65 | 2 | 5 | 2 | 2 |
| pglib_opf_case39_epri__sad | 39 | 46 | 1.5470e+05 | 1.5246e+05 | 0.20 | 0.60 | 2 | 5 | 2 | 2 |
| pglib_opf_case57_ieee__sad | 57 | 80 | inf. | 4.5208e+04 | 0.83 | 1.79 | 2 | 5 | 2 | 2 |
| pglib_opf_case73_ieee_rts__sad | 73 | 120 | 2.3291e+05 | 2.2775e+05 | 2.54 | 6.75 | 2 | 5 | 3 | 2 |
| pglib_opf_case89_pegase__sad | 89 | 210 | inf. | 1.1657e+05 | 0.82 | 0.86 | 2 | 5 | 3 | 2 |
| pglib_opf_case118_ieee__sad | 118 | 186 | inf. | 1.2924e+05 | 9.48 | 11.53 | 2 | 5 | 3 | 2 |
| pglib_opf_case162_ieee_dtc__sad | 162 | 284 | 1.2549e+05 | 1.2704e+05 | 8.02 | 8.32 | 2 | 5 | 4 | 2 |
| pglib_opf_case200_pserc__sad | 200 | 245 | inf. | 4.0991e+04 | 0.17 | 0.18 | 2 | 5 | 4 | 2 |
| pglib_opf_case240_pserc__sad | 240 | 448 | inf. | 3.6565e+06 | 5.24 | 6.19 | 3 | 9 | 12 | 5 |
| pglib_opf_case300_ieee__sad | 300 | 411 | 6.0726e+05 | 6.6431e+05 | 2.36 | 2.52 | 2 | 6 | 5 | 3 |
| pglib_opf_case1354_pegase__sad | 1354 | 1991 | inf. | 1.3646e+06 | 2.37 | 2.45 | 4 | 13 | 21 | 10 |
| pglib_opf_case1888_rte__sad | 1888 | 2531 | 1.5123e+06 | 1.5806e+06 | 2.73 | 2.74 | 3 | 26 | 30 | 16 |
| pglib_opf_case1951_rte__sad | 1951 | 2596 | inf. | 2.3820e+06 | 0.37 | 0.40 | 5 | 36 | 32 | 17 |
| pglib_opf_case2383wp_k__sad | 2383 | 2896 | inf. | 1.9165e+06 | 2.16 | 3.13 | 8 | 19 | 31 | 18 |
| pglib_opf_case2736sp_k__sad | 2736 | 3504 | inf. | 1.3294e+06 | 1.53 | 1.80 | 6 | 18 | 33 | 16 |
| pglib_opf_case2737sop_k__sad | 2737 | 3506 | inf. | 7.9267e+05 | 1.92 | 2.10 | 5 | 16 | 31 | 12 |
| pglib_opf_case2746wop_k__sad | 2746 | 3514 | inf. | 1.2344e+06 | 2.00 | 2.37 | 6 | 17 | 27 | 13 |
| pglib_opf_case2746wp_k__sad | 2746 | 3514 | inf. | 1.6674e+06 | 1.68 | 2.21 | 6 | 16 | 31 | 17 |
| pglib_opf_case2848_rte__sad | 2848 | 3776 | inf. | 1.3879e+06 | 0.27 | 0.29 | 6 | 33 | 49 | 18 |
| pglib_opf_case2868_rte__sad | 2868 | 3808 | inf. | 2.2707e+06 | 0.50 | 0.53 | 6 | 31 | 53 | 21 |
| pglib_opf_case2869_pegase__sad | 2869 | 4582 | inf. | 2.6198e+06 | 1.39 | 1.49 | 12 | 25 | 75 | 25 |
| pglib_opf_case3012wp_k__sad | 3012 | 3572 | inf. | 2.6213e+06 | 1.41 | 1.62 | 9 | 22 | 48 | 19 |
| pglib_opf_case3120sp_k__sad | 3120 | 3693 | inf. | 2.1755e+06 | 1.42 | 1.61 | 10 | 24 | 51 | 20 |
| pglib_opf_case3375wp_k__sad | 3375 | 4161 | 7.3197e+06 | 7.4357e+06 | 0.47 | 0.52 | 5 | 24 | 81 | 83 |
| pglib_opf_case6468_rte__sad | 6468 | 9000 | 2.1619e+06 | 2.2623e+06 | 1.05 | 1.07 | 5 | 176 | 191 | 86 |
| pglib_opf_case6470_rte__sad | 6470 | 9005 | 2.4483e+06 | 2.5597e+06 | 2.03 | 2.09 | 6 | 70 | 179 | 69 |
| pglib_opf_case6495_rte__sad | 6495 | 9019 | 2.8482e+06 | 3.4777e+06 | 16.63 | 16.76 | 6 | 130 | 203 | 75 |
| pglib_opf_case6515_rte__sad | 6515 | 9037 | 2.8486e+06 | 3.2679e+06 | 9.83 | 9.87 | 6 | 113 | 191 | 71 |
| pglib_opf_case9241_pegase__sad | 9241 | 16049 | inf. | 6.9170e+06 | 3.49 | 3.56 | 24 | 135 | 668 | 153 |
| pglib_opf_case13659_pegase__sad | 13659 | 20467 | inf. | 1.0901e+07 | 1.70 | 1.74 | 36 | 152 | 821 | 1598 |


