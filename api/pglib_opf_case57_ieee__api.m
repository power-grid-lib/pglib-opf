%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%    IEEE PES Power Grid Library - Optimal Power Flow - v18.08     %%%%%
%%%%          (https://github.com/power-grid-lib/pglib-opf)           %%%%%
%%%%             Benchmark Group - Active Power Increase              %%%%%
%%%%                         31 - July - 2018                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = pglib_opf_case57_ieee__api
mpc.version = '2';
mpc.baseMVA = 100.0;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	 3	 63.42	 17.00	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	2	 2	 3.46	 88.00	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	3	 2	 47.28	 21.00	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	4	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	5	 1	 14.99	 4.00	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	6	 2	 86.49	 2.00	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	7	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	8	 2	 172.98	 22.00	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	9	 2	 139.53	 26.00	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	10	 1	 5.77	 2.00	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	11	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	12	 2	 434.75	 24.00	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	13	 1	 20.76	 2.30	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	14	 1	 12.11	 5.30	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	15	 1	 25.37	 5.00	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	16	 1	 49.59	 3.00	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	17	 1	 48.43	 8.00	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	18	 1	 31.37	 9.80	 0.0	 10.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	19	 1	 3.81	 0.60	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	20	 1	 2.65	 1.00	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	21	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	22	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	23	 1	 7.27	 2.10	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	24	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	25	 1	 7.27	 3.20	 0.0	 5.9	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	26	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	27	 1	 10.72	 0.50	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	28	 1	 5.30	 2.30	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	29	 1	 19.60	 2.60	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	30	 1	 4.15	 1.80	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	31	 1	 6.69	 2.90	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	32	 1	 1.85	 0.80	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	33	 1	 4.38	 1.90	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	34	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	35	 1	 6.92	 3.00	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	36	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	37	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	38	 1	 16.14	 7.00	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	39	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	40	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	41	 1	 7.27	 3.00	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	42	 1	 8.19	 4.40	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	43	 1	 2.31	 1.00	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	44	 1	 13.84	 1.80	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	45	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	46	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	47	 1	 34.25	 11.60	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	48	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	49	 1	 20.76	 8.50	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	50	 1	 24.22	 10.50	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	51	 1	 20.76	 5.30	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	52	 1	 5.65	 2.20	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	53	 1	 23.06	 10.00	 0.0	 6.3	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	54	 1	 4.73	 1.40	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	55	 1	 7.84	 3.40	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	56	 1	 8.76	 2.20	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	57	 1	 7.73	 2.00	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	 1.0	 0.0	 123.0	 -123.0	 1.04	 100.0	 1	 2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	2	 0.0	 16.5	 50.0	 -17.0	 1.01	 100.0	 1	 0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % SYNC
	3	 331.5	 0.0	 332.0	 -332.0	 0.985	 100.0	 1	 663	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	6	 0.0	 0.0	 116.4	 -116.4	 0.98	 100.0	 1	 0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % SYNC
	8	 314.5	 0.0	 315.0	 -315.0	 1.005	 100.0	 1	 629	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
	9	 0.0	 0.0	 38.4	 -38.4	 0.98	 100.0	 1	 0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % SYNC
	12	 372.5	 0.0	 373.0	 -373.0	 1.015	 100.0	 1	 745	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 0.0	 0.0	 3	   0.000000	  18.277588	   0.000000; % NG
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000; % SYNC
	2	 0.0	 0.0	 3	   0.000000	  45.877299	   0.000000; % NG
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000; % SYNC
	2	 0.0	 0.0	 3	   0.000000	  30.784636	   0.000000; % COW
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000; % SYNC
	2	 0.0	 0.0	 3	   0.000000	  48.614960	   0.000000; % COW
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	 2	 0.0083	 0.028	 0.129	 1005.0	 1005.0	 1005.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2	 3	 0.0298	 0.085	 0.0818	 326.0	 326.0	 326.0	 0.0	 0.0	 1	 -30.0	 30.0;
	3	 4	 0.0112	 0.0366	 0.038	 767.0	 767.0	 767.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4	 5	 0.0625	 0.132	 0.0258	 201.0	 201.0	 201.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4	 6	 0.043	 0.148	 0.0348	 191.0	 191.0	 191.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6	 7	 0.02	 0.102	 0.0276	 283.0	 283.0	 283.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6	 8	 0.0339	 0.173	 0.047	 167.0	 167.0	 167.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8	 9	 0.0099	 0.0505	 0.0548	 570.0	 570.0	 570.0	 0.0	 0.0	 1	 -30.0	 30.0;
	9	 10	 0.0369	 0.1679	 0.044	 171.0	 171.0	 171.0	 0.0	 0.0	 1	 -30.0	 30.0;
	9	 11	 0.0258	 0.0848	 0.0218	 331.0	 331.0	 331.0	 0.0	 0.0	 1	 -30.0	 30.0;
	9	 12	 0.0648	 0.295	 0.0772	 98.0	 98.0	 98.0	 0.0	 0.0	 1	 -30.0	 30.0;
	9	 13	 0.0481	 0.158	 0.0406	 178.0	 178.0	 178.0	 0.0	 0.0	 1	 -30.0	 30.0;
	13	 14	 0.0132	 0.0434	 0.011	 647.0	 647.0	 647.0	 0.0	 0.0	 1	 -30.0	 30.0;
	13	 15	 0.0269	 0.0869	 0.023	 323.0	 323.0	 323.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1	 15	 0.0178	 0.091	 0.0988	 317.0	 317.0	 317.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1	 16	 0.0454	 0.206	 0.0546	 140.0	 140.0	 140.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1	 17	 0.0238	 0.108	 0.0286	 266.0	 266.0	 266.0	 0.0	 0.0	 1	 -30.0	 30.0;
	3	 15	 0.0162	 0.053	 0.0544	 530.0	 530.0	 530.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4	 18	 0.0	 0.555	 0.0	 53.0	 53.0	 53.0	 0.97	 0.0	 1	 -30.0	 30.0;
	4	 18	 0.0	 0.43	 0.0	 69.0	 69.0	 69.0	 0.978	 0.0	 1	 -30.0	 30.0;
	5	 6	 0.0302	 0.0641	 0.0124	 414.0	 414.0	 414.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7	 8	 0.0139	 0.0712	 0.0194	 405.0	 405.0	 405.0	 0.0	 0.0	 1	 -30.0	 30.0;
	10	 12	 0.0277	 0.1262	 0.0328	 228.0	 228.0	 228.0	 0.0	 0.0	 1	 -30.0	 30.0;
	11	 13	 0.0223	 0.0732	 0.0188	 384.0	 384.0	 384.0	 0.0	 0.0	 1	 -30.0	 30.0;
	12	 13	 0.0178	 0.058	 0.0604	 484.0	 484.0	 484.0	 0.0	 0.0	 1	 -30.0	 30.0;
	12	 16	 0.018	 0.0813	 0.0216	 353.0	 353.0	 353.0	 0.0	 0.0	 1	 -30.0	 30.0;
	12	 17	 0.0397	 0.179	 0.0476	 160.0	 160.0	 160.0	 0.0	 0.0	 1	 -30.0	 30.0;
	14	 15	 0.0171	 0.0547	 0.0148	 512.0	 512.0	 512.0	 0.0	 0.0	 1	 -30.0	 30.0;
	18	 19	 0.461	 0.685	 0.0	 36.0	 36.0	 36.0	 0.0	 0.0	 1	 -30.0	 30.0;
	19	 20	 0.283	 0.434	 0.0	 57.0	 57.0	 57.0	 0.0	 0.0	 1	 -30.0	 30.0;
	21	 20	 0.0	 0.7767	 0.0	 38.0	 38.0	 38.0	 1.043	 0.0	 1	 -30.0	 30.0;
	21	 22	 0.0736	 0.117	 0.0	 213.0	 213.0	 213.0	 0.0	 0.0	 1	 -30.0	 30.0;
	22	 23	 0.0099	 0.0152	 0.0	 1617.0	 1617.0	 1617.0	 0.0	 0.0	 1	 -30.0	 30.0;
	23	 24	 0.166	 0.256	 0.0084	 97.0	 97.0	 97.0	 0.0	 0.0	 1	 -30.0	 30.0;
	24	 25	 0.0	 1.182	 0.0	 25.0	 25.0	 25.0	 1.0	 0.0	 1	 -30.0	 30.0;
	24	 25	 0.0	 1.23	 0.0	 24.0	 24.0	 24.0	 1.0	 0.0	 1	 -30.0	 30.0;
	24	 26	 0.0	 0.0473	 0.0	 621.0	 621.0	 621.0	 1.043	 0.0	 1	 -30.0	 30.0;
	26	 27	 0.165	 0.254	 0.0	 97.0	 97.0	 97.0	 0.0	 0.0	 1	 -30.0	 30.0;
	27	 28	 0.0618	 0.0954	 0.0	 259.0	 259.0	 259.0	 0.0	 0.0	 1	 -30.0	 30.0;
	28	 29	 0.0418	 0.0587	 0.0	 408.0	 408.0	 408.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7	 29	 0.0	 0.0648	 0.0	 453.0	 453.0	 453.0	 0.967	 0.0	 1	 -30.0	 30.0;
	25	 30	 0.135	 0.202	 0.0	 121.0	 121.0	 121.0	 0.0	 0.0	 1	 -30.0	 30.0;
	30	 31	 0.326	 0.497	 0.0	 50.0	 50.0	 50.0	 0.0	 0.0	 1	 -30.0	 30.0;
	31	 32	 0.507	 0.755	 0.0	 33.0	 33.0	 33.0	 0.0	 0.0	 1	 -30.0	 30.0;
	32	 33	 0.0392	 0.036	 0.0	 552.0	 552.0	 552.0	 0.0	 0.0	 1	 -30.0	 30.0;
	34	 32	 0.0	 0.953	 0.0	 31.0	 31.0	 31.0	 0.975	 0.0	 1	 -30.0	 30.0;
	34	 35	 0.052	 0.078	 0.0032	 313.0	 313.0	 313.0	 0.0	 0.0	 1	 -30.0	 30.0;
	35	 36	 0.043	 0.0537	 0.0016	 427.0	 427.0	 427.0	 0.0	 0.0	 1	 -30.0	 30.0;
	36	 37	 0.029	 0.0366	 0.0	 629.0	 629.0	 629.0	 0.0	 0.0	 1	 -30.0	 30.0;
	37	 38	 0.0651	 0.1009	 0.002	 245.0	 245.0	 245.0	 0.0	 0.0	 1	 -30.0	 30.0;
	37	 39	 0.0239	 0.0379	 0.0	 655.0	 655.0	 655.0	 0.0	 0.0	 1	 -30.0	 30.0;
	36	 40	 0.03	 0.0466	 0.0	 530.0	 530.0	 530.0	 0.0	 0.0	 1	 -30.0	 30.0;
	22	 38	 0.0192	 0.0295	 0.0	 834.0	 834.0	 834.0	 0.0	 0.0	 1	 -30.0	 30.0;
	11	 41	 0.0	 0.749	 0.0	 40.0	 40.0	 40.0	 0.955	 0.0	 1	 -30.0	 30.0;
	41	 42	 0.207	 0.352	 0.0	 72.0	 72.0	 72.0	 0.0	 0.0	 1	 -30.0	 30.0;
	41	 43	 0.0	 0.412	 0.0	 72.0	 72.0	 72.0	 0.0	 0.0	 1	 -30.0	 30.0;
	38	 44	 0.0289	 0.0585	 0.002	 450.0	 450.0	 450.0	 0.0	 0.0	 1	 -30.0	 30.0;
	15	 45	 0.0	 0.1042	 0.0	 282.0	 282.0	 282.0	 0.955	 0.0	 1	 -30.0	 30.0;
	14	 46	 0.0	 0.0735	 0.0	 400.0	 400.0	 400.0	 0.9	 0.0	 1	 -30.0	 30.0;
	46	 47	 0.023	 0.068	 0.0032	 409.0	 409.0	 409.0	 0.0	 0.0	 1	 -30.0	 30.0;
	47	 48	 0.0182	 0.0233	 0.0	 993.0	 993.0	 993.0	 0.0	 0.0	 1	 -30.0	 30.0;
	48	 49	 0.0834	 0.129	 0.0048	 191.0	 191.0	 191.0	 0.0	 0.0	 1	 -30.0	 30.0;
	49	 50	 0.0801	 0.128	 0.0	 195.0	 195.0	 195.0	 0.0	 0.0	 1	 -30.0	 30.0;
	50	 51	 0.1386	 0.22	 0.0	 113.0	 113.0	 113.0	 0.0	 0.0	 1	 -30.0	 30.0;
	10	 51	 0.0	 0.0712	 0.0	 412.0	 412.0	 412.0	 0.93	 0.0	 1	 -30.0	 30.0;
	13	 49	 0.0	 0.191	 0.0	 154.0	 154.0	 154.0	 0.895	 0.0	 1	 -30.0	 30.0;
	29	 52	 0.1442	 0.187	 0.0	 125.0	 125.0	 125.0	 0.0	 0.0	 1	 -30.0	 30.0;
	52	 53	 0.0762	 0.0984	 0.0	 236.0	 236.0	 236.0	 0.0	 0.0	 1	 -30.0	 30.0;
	53	 54	 0.1878	 0.232	 0.0	 99.0	 99.0	 99.0	 0.0	 0.0	 1	 -30.0	 30.0;
	54	 55	 0.1732	 0.2265	 0.0	 103.0	 103.0	 103.0	 0.0	 0.0	 1	 -30.0	 30.0;
	11	 43	 0.0	 0.153	 0.0	 192.0	 192.0	 192.0	 0.958	 0.0	 1	 -30.0	 30.0;
	44	 45	 0.0624	 0.1242	 0.004	 212.0	 212.0	 212.0	 0.0	 0.0	 1	 -30.0	 30.0;
	40	 56	 0.0	 1.195	 0.0	 25.0	 25.0	 25.0	 0.958	 0.0	 1	 -30.0	 30.0;
	56	 41	 0.553	 0.549	 0.0	 38.0	 38.0	 38.0	 0.0	 0.0	 1	 -30.0	 30.0;
	56	 42	 0.2125	 0.354	 0.0	 72.0	 72.0	 72.0	 0.0	 0.0	 1	 -30.0	 30.0;
	39	 57	 0.0	 1.355	 0.0	 22.0	 22.0	 22.0	 0.98	 0.0	 1	 -30.0	 30.0;
	57	 56	 0.174	 0.26	 0.0	 94.0	 94.0	 94.0	 0.0	 0.0	 1	 -30.0	 30.0;
	38	 49	 0.115	 0.177	 0.003	 139.0	 139.0	 139.0	 0.0	 0.0	 1	 -30.0	 30.0;
	38	 48	 0.0312	 0.0482	 0.0	 511.0	 511.0	 511.0	 0.0	 0.0	 1	 -30.0	 30.0;
	9	 55	 0.0	 0.1205	 0.0	 244.0	 244.0	 244.0	 0.94	 0.0	 1	 -30.0	 30.0;
];

% INFO    : === Translation Options ===
% INFO    : Load Model:                  from file ./pglib_opf_case57_ieee.m.api.sol
% INFO    : Gen Active Capacity Model:   stat
% INFO    : Gen Reactive Capacity Model: al50ag
% INFO    : Gen Active Cost Model:       stat
% INFO    : 
% INFO    : === Load Replacement Notes ===
% INFO    : Bus 1	: Pd=55.0, Qd=17.0 -> Pd=63.42, Qd=17.00
% INFO    : Bus 2	: Pd=3.0, Qd=88.0 -> Pd=3.46, Qd=88.00
% INFO    : Bus 3	: Pd=41.0, Qd=21.0 -> Pd=47.28, Qd=21.00
% INFO    : Bus 5	: Pd=13.0, Qd=4.0 -> Pd=14.99, Qd=4.00
% INFO    : Bus 6	: Pd=75.0, Qd=2.0 -> Pd=86.49, Qd=2.00
% INFO    : Bus 8	: Pd=150.0, Qd=22.0 -> Pd=172.98, Qd=22.00
% INFO    : Bus 9	: Pd=121.0, Qd=26.0 -> Pd=139.53, Qd=26.00
% INFO    : Bus 10	: Pd=5.0, Qd=2.0 -> Pd=5.77, Qd=2.00
% INFO    : Bus 12	: Pd=377.0, Qd=24.0 -> Pd=434.75, Qd=24.00
% INFO    : Bus 13	: Pd=18.0, Qd=2.3 -> Pd=20.76, Qd=2.30
% INFO    : Bus 14	: Pd=10.5, Qd=5.3 -> Pd=12.11, Qd=5.30
% INFO    : Bus 15	: Pd=22.0, Qd=5.0 -> Pd=25.37, Qd=5.00
% INFO    : Bus 16	: Pd=43.0, Qd=3.0 -> Pd=49.59, Qd=3.00
% INFO    : Bus 17	: Pd=42.0, Qd=8.0 -> Pd=48.43, Qd=8.00
% INFO    : Bus 18	: Pd=27.2, Qd=9.8 -> Pd=31.37, Qd=9.80
% INFO    : Bus 19	: Pd=3.3, Qd=0.6 -> Pd=3.81, Qd=0.60
% INFO    : Bus 20	: Pd=2.3, Qd=1.0 -> Pd=2.65, Qd=1.00
% INFO    : Bus 23	: Pd=6.3, Qd=2.1 -> Pd=7.27, Qd=2.10
% INFO    : Bus 25	: Pd=6.3, Qd=3.2 -> Pd=7.27, Qd=3.20
% INFO    : Bus 27	: Pd=9.3, Qd=0.5 -> Pd=10.72, Qd=0.50
% INFO    : Bus 28	: Pd=4.6, Qd=2.3 -> Pd=5.30, Qd=2.30
% INFO    : Bus 29	: Pd=17.0, Qd=2.6 -> Pd=19.60, Qd=2.60
% INFO    : Bus 30	: Pd=3.6, Qd=1.8 -> Pd=4.15, Qd=1.80
% INFO    : Bus 31	: Pd=5.8, Qd=2.9 -> Pd=6.69, Qd=2.90
% INFO    : Bus 32	: Pd=1.6, Qd=0.8 -> Pd=1.85, Qd=0.80
% INFO    : Bus 33	: Pd=3.8, Qd=1.9 -> Pd=4.38, Qd=1.90
% INFO    : Bus 35	: Pd=6.0, Qd=3.0 -> Pd=6.92, Qd=3.00
% INFO    : Bus 38	: Pd=14.0, Qd=7.0 -> Pd=16.14, Qd=7.00
% INFO    : Bus 41	: Pd=6.3, Qd=3.0 -> Pd=7.27, Qd=3.00
% INFO    : Bus 42	: Pd=7.1, Qd=4.4 -> Pd=8.19, Qd=4.40
% INFO    : Bus 43	: Pd=2.0, Qd=1.0 -> Pd=2.31, Qd=1.00
% INFO    : Bus 44	: Pd=12.0, Qd=1.8 -> Pd=13.84, Qd=1.80
% INFO    : Bus 47	: Pd=29.7, Qd=11.6 -> Pd=34.25, Qd=11.60
% INFO    : Bus 49	: Pd=18.0, Qd=8.5 -> Pd=20.76, Qd=8.50
% INFO    : Bus 50	: Pd=21.0, Qd=10.5 -> Pd=24.22, Qd=10.50
% INFO    : Bus 51	: Pd=18.0, Qd=5.3 -> Pd=20.76, Qd=5.30
% INFO    : Bus 52	: Pd=4.9, Qd=2.2 -> Pd=5.65, Qd=2.20
% INFO    : Bus 53	: Pd=20.0, Qd=10.0 -> Pd=23.06, Qd=10.00
% INFO    : Bus 54	: Pd=4.1, Qd=1.4 -> Pd=4.73, Qd=1.40
% INFO    : Bus 55	: Pd=6.8, Qd=3.4 -> Pd=7.84, Qd=3.40
% INFO    : Bus 56	: Pd=7.6, Qd=2.2 -> Pd=8.76, Qd=2.20
% INFO    : Bus 57	: Pd=6.7, Qd=2.0 -> Pd=7.73, Qd=2.00
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=122.5, Qg=0.0 -> Pg=1.0, Qg=-44.0
% INFO    : Gen at bus 2	: Pg=0.0, Qg=16.5 -> Pg=0.0, Qg=-11.0
% INFO    : Gen at bus 3	: Pg=30.0, Qg=10.0 -> Pg=587.0, Qg=86.0
% INFO    : Gen at bus 6	: Pg=0.0, Qg=8.5 -> Pg=0.0, Qg=97.0
% INFO    : Gen at bus 8	: Pg=579.5, Qg=30.0 -> Pg=460.0, Qg=45.0
% INFO    : Gen at bus 9	: Pg=0.0, Qg=3.0 -> Pg=0.0, Qg=32.0
% INFO    : Gen at bus 12	: Pg=259.5, Qg=2.5 -> Pg=441.0, Qg=159.0
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Setpoint Value Notes ===
% INFO    : Gen at bus 3	: Qg 86.0, Qmin -10.0, Qmax 30.0 -> Qmin -103.2, Qmax 103.2
% INFO    : Gen at bus 6	: Qg 97.0, Qmin -8.0, Qmax 25.0 -> Qmin -116.4, Qmax 116.4
% INFO    : Gen at bus 9	: Qg 32.0, Qmin -3.0, Qmax 9.0 -> Qmin -38.4, Qmax 38.4
% INFO    : Gen at bus 12	: Qg 159.0, Qmin -150.0, Qmax 155.0 -> Qmin -190.8, Qmax 190.8
% INFO    : 
% INFO    : === Generator Classification Notes ===
% INFO    : SYNC   3   -     0.00
% INFO    : COW    2   -    60.51
% INFO    : NG     2   -    39.49
% INFO    : 
% INFO    : === Generator Active Capacity Stat Model Notes ===
% INFO    : Gen at bus 1 - NG	: Pg=1.0, Pmax=245.0 -> Pmax=2   samples: 4
% INFO    : Gen at bus 2 - SYNC	: Pg=0.0, Pmax=0.0 -> Pmax=0   samples: 0
% WARNING : Failed to find a generator capacity within (587.0-2935.0) after 100 samples, using percent increase model
% INFO    : Gen at bus 3 - NG	: Pg=587.0, Pmax=60.0 -> Pmax=663   samples: 100
% INFO    : Gen at bus 6 - SYNC	: Pg=0.0, Pmax=0.0 -> Pmax=0   samples: 0
% INFO    : Gen at bus 8 - COW	: Pg=460.0, Pmax=1159.0 -> Pmax=629   samples: 2
% INFO    : Gen at bus 9 - SYNC	: Pg=0.0, Pmax=0.0 -> Pmax=0   samples: 0
% INFO    : Gen at bus 12 - COW	: Pg=441.0, Pmax=519.0 -> Pmax=745   samples: 4
% INFO    : 
% INFO    : === Generator Active Capacity LB Model Notes ===
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Max 50 Percent Active Model Notes ===
% INFO    : Gen at bus 3 - NG	: Pmax 663.0, Qmin -103.2, Qmax 103.2 -> Qmin -332.0, Qmax 332.0
% INFO    : Gen at bus 8 - COW	: Pmax 629.0, Qmin -140.0, Qmax 200.0 -> Qmin -315.0, Qmax 315.0
% INFO    : Gen at bus 12 - COW	: Pmax 745.0, Qmin -190.8, Qmax 190.8 -> Qmin -373.0, Qmax 373.0
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=1.0, Qg=-44.0 -> Pg=1.0, Qg=0.0
% INFO    : Gen at bus 2	: Pg=0.0, Qg=-11.0 -> Pg=0.0, Qg=16.5
% INFO    : Gen at bus 3	: Pg=587.0, Qg=86.0 -> Pg=331.5, Qg=0.0
% INFO    : Gen at bus 6	: Pg=0.0, Qg=97.0 -> Pg=0.0, Qg=0.0
% INFO    : Gen at bus 8	: Pg=460.0, Qg=45.0 -> Pg=314.5, Qg=0.0
% INFO    : Gen at bus 9	: Pg=0.0, Qg=32.0 -> Pg=0.0, Qg=0.0
% INFO    : Gen at bus 12	: Pg=441.0, Qg=159.0 -> Pg=372.5, Qg=0.0
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
