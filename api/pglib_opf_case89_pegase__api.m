%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%    IEEE PES Power Grid Library - Optimal Power Flow - v19.01     %%%%%
%%%%          (https://github.com/power-grid-lib/pglib-opf)           %%%%%
%%%%             Benchmark Group - Active Power Increase              %%%%%
%%%%                       04 - January - 2019                        %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = pglib_opf_case89_pegase__api
mpc.version = '2';
mpc.baseMVA = 100.0;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	89	 1	 0.0	 0.0	 0.199111	 4.530599	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	228	 1	 -23.43	 57.40	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	271	 1	 114.96	 26.80	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	317	 1	 -0.0	 -0.0	 0.045946	 -1.82203	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	659	 1	 -0.0	 -0.0	 0.174507	 73.977052	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	792	 1	 351.07	 41.90	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	913	 3	 0.0	 0.0	 0.0	 0.0	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	955	 1	 290.32	 152.70	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	1037	 1	 -0.0	 0.0	 0.0	 0.55	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	1163	 1	 -0.0	 -0.0	 0.0	 16.04	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	1317	 1	 149.30	 -2.00	 0.0	 20.77	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	1367	 1	 0.0	 -0.0	 0.175687	 -1.509401	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	1445	 1	 283.42	 210.90	 0.0	 0.0	 0	    1.00000	    0.00000	 220.0	 2	    1.10000	    0.90000;
	1531	 1	 -0.0	 0.0	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	1579	 1	 -0.0	 0.0	 0.0	 16.56	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	1611	 1	 325.87	 166.50	 0.0	 0.56	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	1616	 1	 0.0	 0.0	 0.0	 14.45	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	1676	 1	 -0.0	 0.0	 0.171586	 -1.4632	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	1815	 1	 75.68	 9.70	 0.0	 0.0	 0	    1.00000	    0.00000	 220.0	 2	    1.10000	    0.90000;
	1968	 1	 140.76	 137.00	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	2107	 2	 0.0	 0.0	 0.0	 0.0	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	2154	 1	 -357.45	 33.05	 0.29	 -5.6	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	2168	 1	 8.60	 -1.48	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	2267	 2	 0.0	 0.0	 0.0	 0.0	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	2268	 1	 0.0	 -0.0	 0.183167	 22.675025	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	2299	 1	 478.04	 110.20	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	2441	 1	 0.0	 -0.0	 0.242534	 1.143584	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	2449	 1	 301.90	 -103.20	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	2520	 1	 -0.0	 -0.0	 0.057433	 3.80797	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	2870	 1	 -0.0	 0.0	 0.0	 0.62	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	2908	 1	 242.29	 61.00	 0.0	 0.6	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	3097	 1	 430.26	 3.66	 0.0	 9.39	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	3242	 1	 352.02	 82.30	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	3279	 1	 0.0	 0.0	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	3493	 1	 269.04	 61.10	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	3506	 1	 0.0	 0.0	 0.0	 0.6	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	3659	 2	 0.0	 0.0	 0.0	 0.0	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	4014	 1	 0.0	 0.0	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	4423	 1	 -0.0	 -0.0	 0.0	 0.33	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	4427	 1	 352.85	 77.70	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	4495	 1	 399.81	 104.40	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	4586	 2	 0.0	 0.0	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	4665	 1	 464.25	 62.50	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	4929	 1	 43.99	 8.70	 0.070441	 50.913893	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	5097	 2	 0.0	 0.0	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	5155	 1	 488.98	 168.00	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	5210	 1	 413.26	 74.37	 0.0	 0.0	 0	    1.00000	    0.00000	 220.0	 2	    1.10000	    0.90000;
	5416	 1	 0.0	 0.0	 0.0	 25.13	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	5509	 1	 0.0	 0.0	 0.314057	 17.296509	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	5587	 1	 -0.0	 -0.0	 0.0	 0.33	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	5762	 1	 0.0	 0.0	 0.0	 2.23	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	5776	 1	 264.76	 80.50	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	5848	 1	 0.0	 -0.0	 0.29	 -0.42	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	5996	 1	 -0.0	 -0.0	 0.164188	 4.023827	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	6069	 1	 -456.66	 -131.97	 0.285753	 35.371068	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	6233	 2	 0.0	 0.0	 0.0	 0.0	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	6293	 1	 -0.0	 0.0	 0.0	 33.66	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	6542	 1	 355.98	 -147.98	 0.0	 0.0	 0	    1.00000	    0.00000	 220.0	 2	    1.10000	    0.90000;
	6704	 1	 -0.0	 -0.0	 0.211099	 0.672832	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	6798	 2	 0.0	 0.0	 0.0	 0.0	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	6826	 1	 326.90	 -82.30	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	6833	 1	 0.0	 0.0	 0.246363	 4.841277	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	7051	 1	 0.0	 0.0	 0.0	 21.19	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	7180	 1	 -0.0	 0.0	 0.234234	 4.220723	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	7279	 2	 0.0	 0.0	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	7526	 1	 -179.73	 -63.08	 0.0	 0.0	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	7563	 1	 531.70	 -12.80	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	7637	 1	 0.0	 0.0	 0.29	 6.18	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	7762	 1	 -0.0	 0.0	 0.304243	 48.453399	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	7829	 1	 -114.36	 30.04	 0.0	 0.0	 0	    1.00000	    0.00000	 220.0	 2	    1.10000	    0.90000;
	7960	 2	 0.0	 0.0	 0.0	 0.0	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	8103	 1	 39.34	 -10.70	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	8179	 1	 -0.0	 0.0	 0.194464	 19.1468	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	8181	 1	 0.0	 -0.0	 0.210824	 6.620599	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	8229	 1	 0.0	 0.0	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	8329	 1	 0.0	 0.0	 0.149712	 2.04987	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	8335	 1	 758.40	 139.57	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	8420	 1	 -0.0	 0.0	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	8574	 1	 -0.0	 0.0	 0.447839	 20.994738	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	8581	 1	 -1299.13	 -140.85	 0.0	 0.0	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	8605	 2	 0.0	 0.0	 0.0	 0.0	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	8847	 1	 -0.0	 0.0	 0.18076	 -0.881251	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	8921	 1	 0.0	 0.0	 0.0	 16.37	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	8964	 1	 1100.77	 147.97	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	9024	 1	 0.0	 0.0	 0.141019	 25.246	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	9025	 1	 0.0	 -0.0	 0.205903	 3.0768	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	9064	 1	 0.0	 -0.0	 0.0	 15.26	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
	9192	 1	 21.30	 23.30	 0.0	 0.0	 0	    1.00000	    0.00000	 150.0	 2	    1.10000	    0.90000;
	9239	 2	 0.0	 0.0	 0.0	 0.0	 0	    1.00000	    0.00000	 380.0	 2	    1.10000	    0.90000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin
mpc.gen = [
	913	 1761.6675	 0.0	 1804.8	 -1804.8	 1.0	 100.0	 1	 3240	 283.335; % COW
	2107	 1406.0	 0.0	 3566.4	 -3566.4	 1.0	 100.0	 1	 2562	 250.0; % PEL
	2267	 167.6675	 0.0	 1143.6	 -1143.6	 1.0	 100.0	 1	 252	 83.335; % COW
	3659	 800.6675	 24.22	 943.64	 -895.2	 1.0	 100.0	 1	 1268	 333.335; % COW
	4586	 -363.8	 0.0	 254.4	 -254.4	 1.0	 100.0	 1	 0	 -727.6; % SYNC
	5097	 8.77	 0.0	 1243.2	 -1243.2	 1.0	 100.0	 1	 14	 3.54; % PEL
	6233	 331.5	 0.0	 2151.6	 -2151.6	 1.0	 100.0	 1	 463	 200.0; % COW
	6798	 617.8325	 0.0	 6224.4	 -6224.4	 1.0	 100.0	 1	 1069	 166.665; % COW
	7279	 -188.465	 0.0	 602.4	 -602.4	 1.0	 100.0	 1	 532	 -908.93; % COW
	7960	 486.5	 0.0	 1822.8	 -1822.8	 1.0	 100.0	 1	 873	 100.0; % COW
	8605	 197.0	 0.0	 769.2	 -769.2	 1.0	 100.0	 1	 294	 100.0; % COW
	9239	 214.5	 0.0	 1704.0	 -1704.0	 1.0	 100.0	 1	 329	 100.0; % COW
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 0.0	 0.0	 3	   0.000000	   6.586541	   0.000000; % COW
	2	 0.0	 0.0	 3	   0.000000	  34.794851	   0.000000; % PEL
	2	 0.0	 0.0	 3	   0.000000	  42.293854	   0.000000; % COW
	2	 0.0	 0.0	 3	   0.000000	  32.583236	   0.000000; % COW
	2	 0.0	 0.0	 3	   0.000000	  16.762466	   0.000000; % SYNC
	2	 0.0	 0.0	 3	   0.000000	  27.707032	   0.000000; % PEL
	2	 0.0	 0.0	 3	   0.000000	   8.398333	   0.000000; % COW
	2	 0.0	 0.0	 3	   0.000000	  37.992337	   0.000000; % COW
	2	 0.0	 0.0	 3	   0.000000	  20.760837	   0.000000; % COW
	2	 0.0	 0.0	 3	   0.000000	  22.517790	   0.000000; % COW
	2	 0.0	 0.0	 3	   0.000000	  31.271293	   0.000000; % COW
	2	 0.0	 0.0	 3	   0.000000	  17.655344	   0.000000; % COW
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	3097	 659	 0.00073	 0.00905	 0.0	 1205.0	 3480.0	 3480.0	 0.0	 0.0	 1	 -30.0	 30.0;
	9024	 4929	 0.00192	 0.02296	 0.0	 909.0	 1371.0	 1371.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1815	 6542	 0.01431	 0.05899	 0.0	 521.0	 521.0	 521.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6542	 1445	 0.02607	 0.07168	 0.0	 415.0	 415.0	 415.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6069	 6833	 0.00054	 0.00465	 0.0	 1600.0	 6748.0	 6748.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6069	 2268	 0.00126	 0.01124	 0.0	 1633.0	 2793.0	 2793.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6069	 7180	 0.00048	 0.00527	 0.0	 1567.0	 5970.0	 5970.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6069	 6293	 0.00082	 0.00938	 0.0	 1600.0	 3355.0	 3355.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1968	 9192	 0.00028	 0.003502	 0.0	 8992.0	 8992.0	 8992.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1968	 3493	 0.691467	 4.414711	 0.0	 8.0	 8.0	 8.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1968	 955	 0.02004	 0.0916	 0.0	 337.0	 337.0	 337.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1968	 228	 0.841911	 4.768444	 0.0	 7.0	 7.0	 7.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1968	 6826	 0.026	 0.08948	 0.0	 339.0	 339.0	 339.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1968	 8964	 0.002631	 0.011889	 0.0	 319.0	 2595.0	 2595.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1968	 5776	 0.7232	 1.944	 0.0	 16.0	 16.0	 16.0	 0.0	 0.0	 1	 -30.0	 30.0;
	9192	 955	 0.156169	 0.546756	 0.0	 56.0	 56.0	 56.0	 0.0	 0.0	 1	 -30.0	 30.0;
	9192	 6826	 0.168809	 0.580622	 0.0	 53.0	 53.0	 53.0	 0.0	 0.0	 1	 -30.0	 30.0;
	9192	 8964	 0.019222	 0.068209	 0.0	 446.0	 446.0	 446.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8574	 1616	 0.00039	 0.00386	 0.0	 1435.0	 8142.0	 8142.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8574	 1163	 0.00096	 0.01138	 0.0	 1468.0	 2766.0	 2766.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8574	 9064	 0.00037	 0.00325	 0.0	 1435.0	 9657.0	 9657.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8574	 8921	 0.00029	 0.00339	 0.0	 1600.0	 9284.0	 9284.0	 0.0	 0.0	 1	 -30.0	 30.0;
	3493	 2299	 0.009458	 0.158871	 0.0	 199.0	 199.0	 199.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2299	 4423	 0.0	 0.000222	 0.0	 142286.0	 142286.0	 142286.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6826	 2299	 0.312951	 7.130667	 0.0	 5.0	 5.0	 5.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7563	 2299	 0.247649	 1.075911	 0.0	 29.0	 29.0	 29.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4427	 2299	 0.06056	 0.18612	 0.0	 162.0	 162.0	 162.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8335	 2299	 2.142489	 4.347733	 0.0	 7.0	 7.0	 7.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5155	 2299	 0.07132	 1.068889	 0.0	 30.0	 30.0	 30.0	 0.0	 0.0	 1	 -30.0	 30.0;
	271	 2299	 0.02268	 0.08652	 0.0	 354.0	 354.0	 354.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2449	 2299	 2.007778	 4.494222	 0.0	 7.0	 7.0	 7.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4665	 2299	 0.006178	 0.028938	 0.0	 1068.0	 1068.0	 1068.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4495	 2299	 0.027711	 0.260951	 0.0	 121.0	 121.0	 121.0	 0.0	 0.0	 1	 -30.0	 30.0;
	3493	 5587	 0.0	 0.000222	 0.0	 319.0	 142286.0	 142286.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4586	 3493	 0.00692	 0.337378	 0.0	 94.0	 94.0	 94.0	 0.0	 0.0	 1	 -30.0	 30.0;
	228	 3493	 0.025991	 0.10048	 0.0	 305.0	 305.0	 305.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6826	 3493	 0.083711	 0.8648	 0.0	 37.0	 37.0	 37.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7563	 3493	 0.447378	 1.862089	 0.0	 17.0	 17.0	 17.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4427	 3493	 0.062169	 0.153191	 0.0	 192.0	 192.0	 192.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8335	 3493	 2.492533	 4.725778	 0.0	 6.0	 6.0	 6.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5155	 3493	 0.020271	 0.08244	 0.0	 373.0	 373.0	 373.0	 0.0	 0.0	 1	 -30.0	 30.0;
	271	 3493	 0.11416	 1.777556	 0.0	 18.0	 18.0	 18.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5776	 3493	 0.574978	 2.992578	 0.0	 11.0	 11.0	 11.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2449	 3493	 1.887067	 4.964444	 0.0	 6.0	 6.0	 6.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4665	 3493	 0.250778	 0.817422	 0.0	 37.0	 37.0	 37.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4495	 3493	 0.007049	 0.029609	 0.0	 1038.0	 1038.0	 1038.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5587	 4586	 0.003049	 0.020218	 0.0	 1545.0	 1545.0	 1545.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4423	 4586	 0.002911	 0.020262	 0.0	 1544.0	 1544.0	 1544.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4929	 2870	 4e-05	 0.00041	 0.0	 777.0	 76679.0	 76679.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4929	 659	 0.00087	 0.01087	 0.0	 1303.0	 2897.0	 2897.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4929	 1037	 4e-05	 0.00046	 0.0	 777.0	 68410.0	 68410.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4929	 659	 0.00095	 0.00924	 0.0	 1501.0	 3401.0	 3401.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1815	 5210	 0.528017	 2.636157	 0.0	 12.0	 12.0	 12.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1815	 1445	 0.032031	 0.128659	 0.0	 239.0	 239.0	 239.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1616	 7762	 0.00044	 0.0032	 0.0	 1665.0	 9780.0	 9780.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1616	 2520	 0.00046	 0.00489	 0.0	 1731.0	 6432.0	 6432.0	 0.0	 0.0	 1	 -30.0	 30.0;
	9064	 7762	 0.0003	 0.00352	 0.0	 1600.0	 8942.0	 8942.0	 0.0	 0.0	 1	 -30.0	 30.0;
	9064	 89	 0.00051	 0.00454	 0.0	 1665.0	 6915.0	 6915.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1317	 659	 0.00068	 0.00746	 0.0	 1633.0	 4217.0	 4217.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1317	 8605	 0.00093	 0.01022	 0.0	 1764.0	 3079.0	 3079.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8605	 1367	 4e-05	 0.0004	 0.0	 1501.0	 78577.0	 78577.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8605	 8921	 0.00078	 0.00698	 0.0	 1764.0	 4498.0	 4498.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1163	 1676	 4e-05	 0.00043	 0.0	 1600.0	 73144.0	 73144.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1163	 7051	 0.00025	 0.00309	 0.0	 1698.0	 10190.0	 10190.0	 0.0	 0.0	 1	 -30.0	 30.0;
	913	 7762	 0.00047	 0.00538	 0.0	 1633.0	 5849.0	 5849.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2107	 7762	 0.00046	 0.00548	 0.0	 1764.0	 5744.0	 5744.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2107	 5996	 0.00016	 0.00173	 0.0	 1863.0	 18181.0	 18181.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2107	 6293	 0.00166	 0.01471	 0.0	 1764.0	 2134.0	 2134.0	 0.0	 0.0	 1	 -30.0	 30.0;
	913	 7762	 0.00051	 0.00512	 0.0	 1797.0	 6140.0	 6140.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6704	 8921	 0.00021	 0.00248	 0.0	 1534.0	 12692.0	 12692.0	 0.0	 0.0	 1	 -30.0	 30.0;
	228	 4586	 0.004391	 0.021689	 0.0	 306.0	 1428.0	 1428.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2441	 6293	 0.00024	 0.00289	 0.0	 1665.0	 10893.0	 10893.0	 0.0	 0.0	 1	 -30.0	 30.0;
	955	 3506	 0.0	 0.000222	 0.0	 358.0	 142286.0	 142286.0	 0.0	 0.0	 1	 -30.0	 30.0;
	955	 8964	 0.01788	 0.100471	 0.0	 310.0	 310.0	 310.0	 0.0	 0.0	 1	 -30.0	 30.0;
	3506	 2908	 0.006458	 0.039982	 0.0	 780.0	 780.0	 780.0	 0.0	 0.0	 1	 -30.0	 30.0;
	228	 6826	 0.106151	 0.993333	 0.0	 32.0	 32.0	 32.0	 0.0	 0.0	 1	 -30.0	 30.0;
	228	 5776	 0.699778	 3.232311	 0.0	 10.0	 10.0	 10.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8964	 6826	 0.257058	 0.43592	 0.0	 63.0	 63.0	 63.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5776	 6826	 0.002769	 0.011449	 0.0	 2682.0	 2682.0	 2682.0	 0.0	 0.0	 1	 -30.0	 30.0;
	659	 8329	 0.00034	 0.00305	 0.0	 1600.0	 10293.0	 10293.0	 0.0	 0.0	 1	 -30.0	 30.0;
	659	 7051	 0.00123	 0.01255	 0.0	 1863.0	 2505.0	 2505.0	 0.0	 0.0	 1	 -30.0	 30.0;
	659	 9239	 6e-05	 0.00065	 0.0	 1435.0	 48391.0	 48391.0	 0.0	 0.0	 1	 -30.0	 30.0;
	659	 7960	 6e-05	 0.00063	 0.0	 1534.0	 49913.0	 49913.0	 0.0	 0.0	 1	 -30.0	 30.0;
	659	 6233	 6e-05	 0.00055	 0.0	 1764.0	 57093.0	 57093.0	 0.0	 0.0	 1	 -30.0	 30.0;
	659	 5416	 0.00079	 0.00968	 0.0	 1369.0	 3253.0	 3253.0	 0.0	 0.0	 1	 -30.0	 30.0;
	659	 6798	 7e-05	 0.00079	 0.0	 39828.0	 39828.0	 39828.0	 0.0	 0.0	 1	 -30.0	 30.0;
	792	 3279	 0.0	 0.000222	 0.0	 397.0	 142286.0	 142286.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7563	 792	 2.064178	 7.545333	 0.0	 5.0	 5.0	 5.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7279	 792	 0.153711	 0.482489	 0.0	 63.0	 63.0	 63.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8335	 792	 0.015809	 0.12368	 0.0	 254.0	 254.0	 254.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2449	 792	 0.057978	 0.363422	 0.0	 86.0	 86.0	 86.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4665	 792	 0.6932	 2.196889	 0.0	 14.0	 14.0	 14.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4495	 792	 0.560356	 2.395867	 0.0	 13.0	 13.0	 13.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5416	 2267	 0.00024	 0.00213	 0.0	 777.0	 14737.0	 14737.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5416	 7637	 0.00093	 0.00884	 0.0	 1303.0	 3554.0	 3554.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8964	 2168	 0.0	 0.000222	 0.0	 332.0	 142286.0	 142286.0	 0.0	 0.0	 1	 -30.0	 30.0;
	3659	 5996	 0.00018	 0.00204	 0.0	 1797.0	 15425.0	 15425.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5762	 5996	 0.00018	 0.00208	 0.0	 777.0	 15130.0	 15130.0	 0.0	 0.0	 1	 -30.0	 30.0;
	3242	 5097	 0.0	 0.000222	 0.0	 142286.0	 142286.0	 142286.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7563	 3242	 0.02068	 0.093391	 0.0	 331.0	 331.0	 331.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4427	 3242	 0.777778	 7.408	 0.0	 5.0	 5.0	 5.0	 0.0	 0.0	 1	 -30.0	 30.0;
	3242	 7279	 0.00884	 0.07292	 0.0	 431.0	 431.0	 431.0	 0.0	 0.0	 1	 -30.0	 30.0;
	271	 3242	 0.131671	 8.295556	 0.0	 4.0	 4.0	 4.0	 0.0	 0.0	 1	 -30.0	 30.0;
	3242	 1611	 0.082462	 0.568222	 0.0	 56.0	 56.0	 56.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5097	 1611	 0.0042	 0.02624	 0.0	 1189.0	 1189.0	 1189.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8181	 8179	 0.00031	 0.00317	 0.0	 1271.0	 9918.0	 9918.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8181	 7762	 0.00043	 0.00498	 0.0	 1501.0	 6320.0	 6320.0	 0.0	 0.0	 1	 -30.0	 30.0;
	9025	 7762	 0.00042	 0.00508	 0.0	 1731.0	 6197.0	 6197.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7563	 4427	 0.110671	 0.773067	 0.0	 41.0	 41.0	 41.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7563	 7279	 0.00912	 0.037609	 0.0	 817.0	 817.0	 817.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7563	 8335	 0.098049	 0.598711	 0.0	 53.0	 53.0	 53.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7563	 5155	 0.019031	 1.160356	 0.0	 28.0	 28.0	 28.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7563	 271	 0.024071	 0.915733	 0.0	 35.0	 35.0	 35.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2449	 7563	 1.484267	 4.479111	 0.0	 7.0	 7.0	 7.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4665	 7563	 0.011578	 0.063271	 0.0	 492.0	 492.0	 492.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4495	 7563	 0.654889	 1.839111	 0.0	 17.0	 17.0	 17.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7563	 1611	 0.022049	 0.10076	 0.0	 307.0	 307.0	 307.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4427	 7279	 0.459867	 2.604711	 0.0	 12.0	 12.0	 12.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4427	 8335	 2.320222	 6.088	 0.0	 5.0	 5.0	 5.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4427	 5155	 0.006369	 0.048089	 0.0	 652.0	 652.0	 652.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4427	 271	 0.006631	 0.0432	 0.0	 723.0	 723.0	 723.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2449	 4427	 2.567244	 6.767111	 0.0	 5.0	 5.0	 5.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4665	 4427	 0.309889	 1.214178	 0.0	 26.0	 26.0	 26.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4495	 4427	 0.009191	 0.043289	 0.0	 714.0	 714.0	 714.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4427	 1611	 0.691022	 5.239556	 0.0	 6.0	 6.0	 6.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5210	 1445	 0.002669	 0.01718	 0.0	 1817.0	 1817.0	 1817.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8179	 5509	 0.00074	 0.00694	 0.0	 1271.0	 4526.0	 4526.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8179	 7762	 0.00068	 0.008	 0.0	 1567.0	 3935.0	 3935.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7279	 4014	 0.0	 0.000222	 0.0	 142286.0	 142286.0	 142286.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8335	 7279	 0.00524	 0.030631	 0.0	 1017.0	 1017.0	 1017.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5155	 7279	 0.33932	 3.814667	 0.0	 9.0	 9.0	 9.0	 0.0	 0.0	 1	 -30.0	 30.0;
	271	 7279	 0.22696	 2.614933	 0.0	 13.0	 13.0	 13.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2449	 7279	 0.190671	 0.719378	 0.0	 43.0	 43.0	 43.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4665	 7279	 1.050222	 2.105556	 0.0	 14.0	 14.0	 14.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4495	 7279	 1.431644	 4.294578	 0.0	 7.0	 7.0	 7.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1611	 7279	 0.022618	 0.161089	 0.0	 195.0	 195.0	 195.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5509	 1579	 0.00088	 0.00895	 0.0	 1830.0	 3513.0	 3513.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8335	 1531	 0.0	 0.000222	 0.0	 319.0	 142286.0	 142286.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5155	 8335	 1.827778	 7.768	 0.0	 4.0	 4.0	 4.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2449	 8335	 0.020849	 0.153382	 0.0	 205.0	 205.0	 205.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4665	 8335	 0.156231	 0.656267	 0.0	 47.0	 47.0	 47.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4495	 8335	 0.176498	 0.891556	 0.0	 35.0	 35.0	 35.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7762	 2268	 0.00067	 0.00777	 0.0	 1633.0	 4051.0	 4051.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5155	 271	 0.004578	 0.061889	 0.0	 509.0	 509.0	 509.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5155	 2908	 0.01348	 0.05932	 0.0	 520.0	 520.0	 520.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4665	 5155	 0.066391	 2.802622	 0.0	 12.0	 12.0	 12.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4495	 5155	 0.194258	 2.220444	 0.0	 15.0	 15.0	 15.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5155	 1611	 0.008151	 0.072822	 0.0	 432.0	 432.0	 432.0	 0.0	 0.0	 1	 -30.0	 30.0;
	271	 2908	 0.016502	 0.055382	 0.0	 547.0	 547.0	 547.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4665	 271	 0.0806	 4.633778	 0.0	 7.0	 7.0	 7.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4495	 271	 0.831556	 3.729644	 0.0	 9.0	 9.0	 9.0	 0.0	 0.0	 1	 -30.0	 30.0;
	271	 1611	 0.007951	 0.074151	 0.0	 424.0	 424.0	 424.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1579	 5848	 0.0004	 0.00362	 0.0	 1633.0	 8673.0	 8673.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7051	 8847	 0.00015	 0.00177	 0.0	 1600.0	 17783.0	 17783.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5776	 8229	 0.0	 0.000222	 0.0	 142286.0	 142286.0	 142286.0	 0.0	 0.0	 1	 -30.0	 30.0;
	317	 6233	 2e-05	 0.00022	 0.0	 1698.0	 142990.0	 142990.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4665	 2449	 0.02864	 0.172902	 0.0	 181.0	 181.0	 181.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2449	 4495	 0.017591	 0.1404	 0.0	 224.0	 224.0	 224.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4665	 4495	 0.00752	 0.031711	 0.0	 970.0	 970.0	 970.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1611	 8420	 0.0	 0.000222	 0.0	 566.0	 142286.0	 142286.0	 0.0	 0.0	 1	 -30.0	 30.0;
	9024	 6542	 0.000742	 0.067219	 0.0	 470.0	 470.0	 470.0	 0.994359	 0.0	 1	 -30.0	 30.0;
	9024	 6542	 0.000793	 0.06388	 0.0	 495.0	 495.0	 495.0	 0.998418	 0.0	 1	 -30.0	 30.0;
	6069	 9192	 0.000609	 0.046809	 0.0	 675.0	 675.0	 675.0	 0.933053	 0.0	 1	 -30.0	 30.0;
	6069	 1968	 0.00059	 0.04521	 0.0	 699.0	 699.0	 699.0	 0.91223	 0.0	 1	 -30.0	 30.0;
	7829	 1968	 0.519194	 5.108058	 0.0	 7.0	 7.0	 7.0	 1.0	 0.0	 1	 -30.0	 30.0;
	8574	 2299	 0.000559	 0.039982	 0.0	 790.0	 790.0	 790.0	 0.919523	 0.0	 1	 -30.0	 30.0;
	8574	 5587	 0.000537	 0.045312	 0.0	 698.0	 698.0	 698.0	 0.948262	 0.0	 1	 -30.0	 30.0;
	4929	 1815	 0.000889	 0.061549	 0.0	 514.0	 514.0	 514.0	 0.996867	 0.0	 1	 -30.0	 30.0;
	1815	 792	 1.467822	 7.764888	 0.0	 4.0	 4.0	 4.0	 1.0	 0.0	 1	 -30.0	 30.0;
	6704	 4586	 0.000586	 0.049031	 0.0	 645.0	 645.0	 645.0	 0.923407	 0.0	 1	 -30.0	 30.0;
	2441	 3506	 0.000417	 0.047801	 0.0	 661.0	 661.0	 661.0	 0.952413	 0.0	 1	 -30.0	 30.0;
	1367	 6826	 0.000755	 0.05143	 0.0	 615.0	 615.0	 615.0	 0.924009	 0.0	 1	 -30.0	 30.0;
	1676	 228	 0.000733	 0.052399	 0.0	 603.0	 603.0	 603.0	 0.934986	 0.0	 1	 -30.0	 30.0;
	7829	 6826	 0.00078	 0.064311	 0.0	 492.0	 492.0	 492.0	 1.0	 0.0	 1	 -30.0	 30.0;
	659	 3279	 0.00089	 0.048632	 0.0	 650.0	 650.0	 650.0	 0.987002	 0.0	 1	 -30.0	 30.0;
	5210	 792	 0.00855	 0.08972	 0.0	 351.0	 351.0	 351.0	 1.0	 0.0	 1	 -30.0	 30.0;
	1445	 792	 0.00223	 0.04836	 0.0	 653.0	 653.0	 653.0	 1.0	 0.0	 1	 -30.0	 30.0;
	7180	 2168	 0.000581	 0.043111	 0.0	 678.0	 733.0	 733.0	 0.924038	 0.0	 1	 -30.0	 30.0;
	6833	 8964	 0.000579	 0.043272	 0.0	 711.0	 730.0	 730.0	 0.901005	 0.0	 1	 -30.0	 30.0;
	3659	 3242	 0.000586	 0.049031	 0.0	 645.0	 645.0	 645.0	 0.923407	 0.0	 1	 -30.0	 30.0;
	8181	 4427	 0.000559	 0.049192	 0.0	 643.0	 643.0	 643.0	 0.924009	 0.0	 1	 -30.0	 30.0;
	9025	 7563	 0.000573	 0.051129	 0.0	 618.0	 618.0	 618.0	 0.934986	 0.0	 1	 -30.0	 30.0;
	2267	 5210	 0.000417	 0.039229	 0.0	 744.0	 806.0	 806.0	 0.967059	 0.0	 1	 -30.0	 30.0;
	5210	 7279	 0.230542	 1.197733	 0.0	 26.0	 26.0	 26.0	 1.0	 0.0	 1	 -30.0	 30.0;
	5210	 8335	 0.02284	 0.2644	 0.0	 120.0	 120.0	 120.0	 1.0	 0.0	 1	 -30.0	 30.0;
	5210	 2449	 0.08537	 0.736798	 0.0	 43.0	 43.0	 43.0	 1.0	 0.0	 1	 -30.0	 30.0;
	5210	 4665	 1.402768	 3.640289	 0.0	 9.0	 9.0	 9.0	 1.0	 0.0	 1	 -30.0	 30.0;
	5210	 4495	 1.050227	 4.450207	 0.0	 7.0	 7.0	 7.0	 1.0	 0.0	 1	 -30.0	 30.0;
	8179	 7279	 0.000716	 0.04371	 0.0	 723.0	 723.0	 723.0	 0.934986	 0.0	 1	 -30.0	 30.0;
	1445	 7279	 0.518622	 2.317689	 0.0	 14.0	 14.0	 14.0	 1.0	 0.0	 1	 -30.0	 30.0;
	5509	 8335	 0.00059	 0.045662	 0.0	 692.0	 692.0	 692.0	 0.955958	 0.0	 1	 -30.0	 30.0;
	5509	 1531	 0.000603	 0.050959	 0.0	 620.0	 620.0	 620.0	 0.968125	 0.0	 1	 -30.0	 30.0;
	1445	 8335	 0.047769	 0.554178	 0.0	 57.0	 57.0	 57.0	 1.0	 0.0	 1	 -30.0	 30.0;
	7762	 5155	 0.000591	 0.045153	 0.0	 700.0	 700.0	 700.0	 0.918868	 0.0	 1	 -30.0	 30.0;
	7762	 271	 0.0006	 0.047778	 0.0	 662.0	 662.0	 662.0	 0.948976	 0.0	 1	 -30.0	 30.0;
	7829	 5776	 0.02436	 0.270151	 0.0	 117.0	 117.0	 117.0	 1.0	 0.0	 1	 -30.0	 30.0;
	8329	 1445	 0.000802	 0.05727	 0.0	 552.0	 552.0	 552.0	 0.967021	 0.0	 1	 -30.0	 30.0;
	8329	 1445	 0.000823	 0.056059	 0.0	 564.0	 564.0	 564.0	 0.967021	 0.0	 1	 -30.0	 30.0;
	1445	 2449	 0.188099	 1.291901	 0.0	 25.0	 25.0	 25.0	 1.0	 0.0	 1	 -30.0	 30.0;
	1445	 4665	 2.466323	 7.26343	 0.0	 5.0	 5.0	 5.0	 1.0	 0.0	 1	 -30.0	 30.0;
	2268	 2908	 0.000523	 0.050352	 0.0	 628.0	 628.0	 628.0	 0.934622	 0.0	 1	 -30.0	 30.0;
	8847	 5776	 0.000682	 0.049638	 0.0	 637.0	 637.0	 637.0	 0.913034	 0.0	 1	 -30.0	 30.0;
	8847	 8103	 0.00099	 0.04736	 0.0	 667.0	 667.0	 667.0	 1.012146	 0.0	 1	 -30.0	 30.0;
	317	 2449	 0.000616	 0.048759	 0.0	 648.0	 648.0	 648.0	 0.933053	 0.0	 1	 -30.0	 30.0;
	7637	 8581	 9e-05	 0.015499	 0.0	 1698.0	 2038.0	 2038.0	 1.0	 -0.428189	 1	 -30.0	 30.0;
	5848	 7526	 9e-05	 0.00963	 0.0	 1698.0	 3280.0	 3280.0	 1.0	 0.178581	 1	 -30.0	 30.0;
	89	 4495	 0.000664	 0.045609	 0.0	 693.0	 693.0	 693.0	 0.924009	 0.0	 1	 -30.0	 30.0;
	2520	 4665	 0.000649	 0.044862	 0.0	 705.0	 705.0	 705.0	 0.933053	 0.0	 1	 -30.0	 30.0;
	5996	 8420	 0.00067	 0.04326	 0.0	 731.0	 731.0	 731.0	 0.923407	 0.0	 1	 -30.0	 30.0;
	2154	 5996	 9e-05	 0.009901	 0.0	 1698.0	 3191.0	 3191.0	 1.0	 -0.153178	 1	 -30.0	 30.0;
];

% INFO    : === Translation Options ===
% INFO    : Load Model:                  from file ./pglib_opf_case89_pegase.m.api.sol
% INFO    : Gen Active Capacity Model:   stat
% INFO    : Gen Reactive Capacity Model: al50ag
% INFO    : Gen Active Cost Model:       stat
% INFO    : 
% INFO    : === Load Replacement Notes ===
% INFO    : Bus 228	: Pd=-23.43, Qd=57.4 -> Pd=-23.43, Qd=57.40
% INFO    : Bus 271	: Pd=96.7, Qd=26.8 -> Pd=114.96, Qd=26.80
% INFO    : Bus 792	: Pd=295.3, Qd=41.9 -> Pd=351.07, Qd=41.90
% INFO    : Bus 955	: Pd=244.2, Qd=152.7 -> Pd=290.32, Qd=152.70
% INFO    : Bus 1317	: Pd=149.3, Qd=-2.0 -> Pd=149.30, Qd=-2.00
% INFO    : Bus 1445	: Pd=238.4, Qd=210.9 -> Pd=283.42, Qd=210.90
% INFO    : Bus 1611	: Pd=274.1, Qd=166.5 -> Pd=325.87, Qd=166.50
% INFO    : Bus 1815	: Pd=63.66, Qd=9.7 -> Pd=75.68, Qd=9.70
% INFO    : Bus 1968	: Pd=118.4, Qd=137.0 -> Pd=140.76, Qd=137.00
% INFO    : Bus 2154	: Pd=-357.45, Qd=33.05 -> Pd=-357.45, Qd=33.05
% INFO    : Bus 2168	: Pd=8.6, Qd=-1.48 -> Pd=8.60, Qd=-1.48
% INFO    : Bus 2299	: Pd=402.1, Qd=110.2 -> Pd=478.04, Qd=110.20
% INFO    : Bus 2449	: Pd=301.9, Qd=-103.2 -> Pd=301.90, Qd=-103.20
% INFO    : Bus 2908	: Pd=203.8, Qd=61.0 -> Pd=242.29, Qd=61.00
% INFO    : Bus 3097	: Pd=361.91, Qd=3.66 -> Pd=430.26, Qd=3.66
% INFO    : Bus 3242	: Pd=296.1, Qd=82.3 -> Pd=352.02, Qd=82.30
% INFO    : Bus 3493	: Pd=226.3, Qd=61.1 -> Pd=269.04, Qd=61.10
% INFO    : Bus 4427	: Pd=296.8, Qd=77.7 -> Pd=352.85, Qd=77.70
% INFO    : Bus 4495	: Pd=336.3, Qd=104.4 -> Pd=399.81, Qd=104.40
% INFO    : Bus 4665	: Pd=390.5, Qd=62.5 -> Pd=464.25, Qd=62.50
% INFO    : Bus 4929	: Pd=37.0, Qd=8.7 -> Pd=43.99, Qd=8.70
% INFO    : Bus 5155	: Pd=411.3, Qd=168.0 -> Pd=488.98, Qd=168.00
% INFO    : Bus 5210	: Pd=347.61, Qd=74.37 -> Pd=413.26, Qd=74.37
% INFO    : Bus 5776	: Pd=222.7, Qd=80.5 -> Pd=264.76, Qd=80.50
% INFO    : Bus 6069	: Pd=-456.66, Qd=-131.97 -> Pd=-456.66, Qd=-131.97
% INFO    : Bus 6542	: Pd=355.98, Qd=-147.98 -> Pd=355.98, Qd=-147.98
% INFO    : Bus 6826	: Pd=326.9, Qd=-82.3 -> Pd=326.90, Qd=-82.30
% INFO    : Bus 7526	: Pd=-179.73, Qd=-63.08 -> Pd=-179.73, Qd=-63.08
% INFO    : Bus 7563	: Pd=531.7, Qd=-12.8 -> Pd=531.70, Qd=-12.80
% INFO    : Bus 7829	: Pd=-114.36, Qd=30.04 -> Pd=-114.36, Qd=30.04
% INFO    : Bus 8103	: Pd=39.34, Qd=-10.7 -> Pd=39.34, Qd=-10.70
% INFO    : Bus 8335	: Pd=637.92, Qd=139.57 -> Pd=758.40, Qd=139.57
% INFO    : Bus 8581	: Pd=-1299.13, Qd=-140.85 -> Pd=-1299.13, Qd=-140.85
% INFO    : Bus 8964	: Pd=925.91, Qd=147.97 -> Pd=1100.77, Qd=147.97
% INFO    : Bus 9192	: Pd=17.92, Qd=23.3 -> Pd=21.30, Qd=23.30
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 913	: Pg=1133.335, Qg=251.085 -> Pg=2987.0, Qg=1504.0
% INFO    : Gen at bus 2107	: Pg=1000.0, Qg=202.14 -> Pg=2207.0, Qg=2972.0
% INFO    : Gen at bus 2267	: Pg=333.335, Qg=74.665 -> Pg=167.0, Qg=953.0
% INFO    : Gen at bus 3659	: Pg=1333.335, Qg=330.815 -> Pg=668.0, Qg=-746.0
% INFO    : Gen at bus 4586	: Pg=-313.8, Qg=31.575 -> Pg=0.0, Qg=-212.0
% INFO    : Gen at bus 5097	: Pg=14.155, Qg=2.4 -> Pg=13.0, Qg=-1036.0
% INFO    : Gen at bus 6233	: Pg=800.0, Qg=177.855 -> Pg=401.0, Qg=1793.0
% INFO    : Gen at bus 6798	: Pg=666.665, Qg=123.065 -> Pg=334.0, Qg=-5187.0
% INFO    : Gen at bus 7279	: Pg=-404.465, Qg=4.07 -> Pg=504.0, Qg=502.0
% INFO    : Gen at bus 7960	: Pg=400.0, Qg=90.49 -> Pg=201.0, Qg=1519.0
% INFO    : Gen at bus 8605	: Pg=400.0, Qg=90.145 -> Pg=201.0, Qg=641.0
% INFO    : Gen at bus 9239	: Pg=400.0, Qg=90.49 -> Pg=201.0, Qg=1420.0
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Setpoint Value Notes ===
% INFO    : Gen at bus 913	: Qg 1504.0, Qmin -269.94, Qmax 772.11 -> Qmin -1804.8, Qmax 1804.8
% INFO    : Gen at bus 2107	: Qg 2972.0, Qmin -257.62, Qmax 661.9 -> Qmin -3566.4, Qmax 3566.4
% INFO    : Gen at bus 2267	: Qg 953.0, Qmin -78.83, Qmax 228.16 -> Qmin -1143.6, Qmax 1143.6
% INFO    : Gen at bus 3659	: Qg -746.0, Qmin -282.01, Qmax 943.64 -> Qmin -895.2, Qmax 943.64
% INFO    : Gen at bus 4586	: Qg -212.0, Qmin -29.81, Qmax 92.96 -> Qmin -254.4, Qmax 254.4
% INFO    : Gen at bus 5097	: Qg -1036.0, Qmin -4.11, Qmax 8.91 -> Qmin -1243.2, Qmax 1243.2
% INFO    : Gen at bus 6233	: Qg 1793.0, Qmin -189.97, Qmax 545.68 -> Qmin -2151.6, Qmax 2151.6
% INFO    : Gen at bus 6798	: Qg -5187.0, Qmin -183.48, Qmax 429.61 -> Qmin -6224.4, Qmax 6224.4
% INFO    : Gen at bus 7279	: Qg 502.0, Qmin -6.64, Qmax 14.78 -> Qmin -602.4, Qmax 602.4
% INFO    : Gen at bus 7960	: Qg 1519.0, Qmin -93.22, Qmax 274.2 -> Qmin -1822.8, Qmax 1822.8
% INFO    : Gen at bus 8605	: Qg 641.0, Qmin -93.65, Qmax 273.94 -> Qmin -769.2, Qmax 769.2
% INFO    : Gen at bus 9239	: Qg 1420.0, Qmin -93.22, Qmax 274.2 -> Qmin -1704.0, Qmax 1704.0
% INFO    : 
% INFO    : === Generator Classification Notes ===
% INFO    : PEL    2   -    28.16
% INFO    : SYNC   1   -     0.00
% INFO    : COW    9   -    71.84
% INFO    : 
% INFO    : === Generator Active Capacity Stat Model Notes ===
% WARNING : Failed to find a generator capacity within (2987.0-14935.0) after 100 samples, using percent increase model
% INFO    : Gen at bus 913 - COW	: Pg=2987.0, Pmax=1700.0 -> Pmax=3240   samples: 100
% WARNING : Failed to find a generator capacity within (2207.0-11035.0) after 100 samples, using percent increase model
% INFO    : Gen at bus 2107 - PEL	: Pg=2207.0, Pmax=1500.0 -> Pmax=2562   samples: 100
% INFO    : Gen at bus 2267 - COW	: Pg=167.0, Pmax=500.0 -> Pmax=252   samples: 1
% INFO    : Gen at bus 3659 - COW	: Pg=668.0, Pmax=2000.0 -> Pmax=1268   samples: 12
% INFO    : Gen at bus 4586 - SYNC	: Pg=0.0, Pmax=100.0 -> Pmax=0   samples: 0
% INFO    : Gen at bus 5097 - PEL	: Pg=13.0, Pmax=21.23 -> Pmax=14   samples: 4
% INFO    : Gen at bus 6233 - COW	: Pg=401.0, Pmax=1200.0 -> Pmax=463   samples: 12
% INFO    : Gen at bus 6798 - COW	: Pg=334.0, Pmax=1000.0 -> Pmax=1069   samples: 1
% INFO    : Gen at bus 7279 - COW	: Pg=504.0, Pmax=100.0 -> Pmax=532   samples: 3
% INFO    : Gen at bus 7960 - COW	: Pg=201.0, Pmax=600.0 -> Pmax=873   samples: 4
% INFO    : Gen at bus 8605 - COW	: Pg=201.0, Pmax=600.0 -> Pmax=294   samples: 1
% INFO    : Gen at bus 9239 - COW	: Pg=201.0, Pmax=600.0 -> Pmax=329   samples: 3
% INFO    : 
% INFO    : === Generator Active Capacity LB Model Notes ===
% INFO    : Gen at bus 913	: Pmin=566.67 -> Pmin=283.335 
% INFO    : Gen at bus 2107	: Pmin=500.0 -> Pmin=250.0 
% INFO    : Gen at bus 2267	: Pmin=166.67 -> Pmin=83.335 
% INFO    : Gen at bus 3659	: Pmin=666.67 -> Pmin=333.335 
% INFO    : Gen at bus 5097	: Pmin=7.08 -> Pmin=3.54 
% INFO    : Gen at bus 6233	: Pmin=400.0 -> Pmin=200.0 
% INFO    : Gen at bus 6798	: Pmin=333.33 -> Pmin=166.665 
% INFO    : Gen at bus 7960	: Pmin=200.0 -> Pmin=100.0 
% INFO    : Gen at bus 8605	: Pmin=200.0 -> Pmin=100.0 
% INFO    : Gen at bus 9239	: Pmin=200.0 -> Pmin=100.0 
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Max 50 Percent Active Model Notes ===
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 913	: Pg=2987.0, Qg=1504.0 -> Pg=1761.6675, Qg=0.0
% INFO    : Gen at bus 913	: Vg=1.0 -> Vg=1.0
% INFO    : Gen at bus 2107	: Pg=2207.0, Qg=2972.0 -> Pg=1406.0, Qg=0.0
% INFO    : Gen at bus 2107	: Vg=1.0 -> Vg=1.0
% INFO    : Gen at bus 2267	: Pg=167.0, Qg=953.0 -> Pg=167.6675, Qg=0.0
% INFO    : Gen at bus 2267	: Vg=1.0 -> Vg=1.0
% INFO    : Gen at bus 3659	: Pg=668.0, Qg=-746.0 -> Pg=800.6675, Qg=24.22
% INFO    : Gen at bus 3659	: Vg=1.0 -> Vg=1.0
% INFO    : Gen at bus 4586	: Pg=0.0, Qg=-212.0 -> Pg=-363.8, Qg=0.0
% INFO    : Gen at bus 4586	: Vg=1.0 -> Vg=1.0
% INFO    : Gen at bus 5097	: Pg=13.0, Qg=-1036.0 -> Pg=8.77, Qg=0.0
% INFO    : Gen at bus 5097	: Vg=1.0 -> Vg=1.0
% INFO    : Gen at bus 6233	: Pg=401.0, Qg=1793.0 -> Pg=331.5, Qg=0.0
% INFO    : Gen at bus 6233	: Vg=1.0 -> Vg=1.0
% INFO    : Gen at bus 6798	: Pg=334.0, Qg=-5187.0 -> Pg=617.8325, Qg=0.0
% INFO    : Gen at bus 6798	: Vg=1.0 -> Vg=1.0
% INFO    : Gen at bus 7279	: Pg=504.0, Qg=502.0 -> Pg=-188.465, Qg=0.0
% INFO    : Gen at bus 7279	: Vg=1.0 -> Vg=1.0
% INFO    : Gen at bus 7960	: Pg=201.0, Qg=1519.0 -> Pg=486.5, Qg=0.0
% INFO    : Gen at bus 7960	: Vg=1.0 -> Vg=1.0
% INFO    : Gen at bus 8605	: Pg=201.0, Qg=641.0 -> Pg=197.0, Qg=0.0
% INFO    : Gen at bus 8605	: Vg=1.0 -> Vg=1.0
% INFO    : Gen at bus 9239	: Pg=201.0, Qg=1420.0 -> Pg=214.5, Qg=0.0
% INFO    : Gen at bus 9239	: Vg=1.0 -> Vg=1.0
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
