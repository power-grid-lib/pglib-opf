%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%    IEEE PES Power Grid Library - Optimal Power Flow - v17.07     %%%%%
%%%%          (https://github.com/power-grid-lib/pglib-opf)           %%%%%
%%%%             Benchmark Group - Active Power Increase              %%%%%
%%%%                         27 - June - 2017                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = pglib_opf_case24_ieee_rts__api
mpc.version = '2';
mpc.baseMVA = 100.0;

%% area data
%	area	refbus
mpc.areas = [
	1	 1;
	2	 3;
	3	 8;
	4	 6;
];

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	 2	 207.30	 22.00	 0.0	 0.0	 1	    1.04533	  -15.56575	 138.0	 1	    1.05000	    0.95000;
	2	 2	 186.19	 20.00	 0.0	 0.0	 1	    1.05000	  -14.31115	 138.0	 1	    1.05000	    0.95000;
	3	 1	 345.50	 37.00	 0.0	 0.0	 1	    0.95143	  -20.06408	 138.0	 1	    1.05000	    0.95000;
	4	 1	 142.04	 15.00	 0.0	 0.0	 1	    0.96623	  -22.70700	 138.0	 1	    1.05000	    0.95000;
	5	 1	 136.28	 14.00	 0.0	 0.0	 1	    0.98661	  -22.94428	 138.0	 1	    1.05000	    0.95000;
	6	 1	 261.05	 28.00	 0.0	 -100.0	 2	    0.95000	  -28.98084	 138.0	 1	    1.05000	    0.95000;
	7	 2	 239.93	 25.00	 0.0	 0.0	 2	    1.02558	  -28.33121	 138.0	 1	    1.05000	    0.95000;
	8	 1	 328.23	 35.00	 0.0	 0.0	 2	    0.95000	  -32.85161	 138.0	 1	    1.05000	    0.95000;
	9	 1	 335.91	 36.00	 0.0	 0.0	 1	    0.95960	  -21.29785	 138.0	 1	    1.05000	    0.95000;
	10	 1	 374.29	 40.00	 0.0	 0.0	 2	    0.97648	  -24.17775	 138.0	 1	    1.05000	    0.95000;
	11	 1	 0.00	 0.00	 0.0	 0.0	 3	    0.96509	   -9.84003	 230.0	 1	    1.05000	    0.95000;
	12	 1	 0.00	 0.00	 0.0	 0.0	 3	    0.96966	   -8.66095	 230.0	 1	    1.05000	    0.95000;
	13	 3	 508.66	 54.00	 0.0	 0.0	 3	    1.05000	   -0.00000	 230.0	 1	    1.05000	    0.95000;
	14	 2	 372.37	 39.00	 0.0	 0.0	 3	    0.96755	   -6.91843	 230.0	 1	    1.05000	    0.95000;
	15	 2	 608.47	 64.00	 0.0	 0.0	 4	    1.05000	    6.10832	 230.0	 1	    1.05000	    0.95000;
	16	 2	 191.95	 20.00	 0.0	 0.0	 4	    0.99147	    4.59459	 230.0	 1	    1.05000	    0.95000;
	17	 1	 0.00	 0.00	 0.0	 0.0	 4	    1.00706	    7.60508	 230.0	 1	    1.05000	    0.95000;
	18	 2	 639.18	 68.00	 0.0	 0.0	 4	    1.01249	    7.34320	 230.0	 1	    1.05000	    0.95000;
	19	 1	 347.42	 37.00	 0.0	 0.0	 3	    0.98801	    0.48633	 230.0	 1	    1.05000	    0.95000;
	20	 1	 245.69	 26.00	 0.0	 0.0	 3	    1.00160	    0.94766	 230.0	 1	    1.05000	    0.95000;
	21	 2	 0.00	 0.00	 0.0	 0.0	 4	    1.05000	   11.08688	 230.0	 1	    1.05000	    0.95000;
	22	 2	 0.00	 0.00	 0.0	 0.0	 4	    1.05000	   21.25155	 230.0	 1	    1.05000	    0.95000;
	23	 2	 0.00	 0.00	 0.0	 0.0	 3	    1.01434	    2.67879	 230.0	 1	    1.05000	    0.95000;
	24	 1	 0.00	 0.00	 0.0	 0.0	 4	    0.96902	   -2.88580	 230.0	 1	    1.05000	    0.95000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	 79.0	 7.632	 40.0	 -40.0	 1.04533	 100.0	 1	 79	 8.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % PEL
	1	 15.459	 45.412	 106.0	 -106.0	 1.04533	 100.0	 1	 211	 8.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % PEL
	1	 75.0	 6.912	 38.0	 -38.0	 1.04533	 100.0	 1	 75	 7.6	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % PEL
	1	 78.0	 7.268	 39.0	 -39.0	 1.04533	 100.0	 1	 78	 7.6	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	2	 8.0	 4.992	 94.0	 -94.0	 1.05	 100.0	 1	 188	 8.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	2	 8.0	 4.679	 91.0	 -91.0	 1.05	 100.0	 1	 182	 8.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % PEL
	2	 7.6	 4.376	 88.0	 -88.0	 1.05	 100.0	 1	 176	 7.6	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	2	 605.536	 60.378	 332.0	 -332.0	 1.05	 100.0	 1	 663	 7.6	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
	7	 12.5	 38.905	 215.0	 -215.0	 1.02558	 100.0	 1	 430	 12.5	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	7	 12.5	 5.136	 77.0	 -77.0	 1.02558	 100.0	 1	 153	 12.5	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	7	 363.97	 72.676	 298.0	 -298.0	 1.02558	 100.0	 1	 595	 12.5	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
	13	 34.5	 128.592	 272.0	 -272.0	 1.05	 100.0	 1	 544	 34.5	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	13	 542.0	 127.82	 271.0	 -271.0	 1.05	 100.0	 1	 542	 34.5	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	13	 609.0	 154.669	 305.0	 -305.0	 1.05	 100.0	 1	 609	 34.5	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
	14	 0.0	 77.54	 250.8	 -250.8	 0.96755	 100.0	 1	 0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % SYNC
	15	 159.0	 94.8	 94.8	 -94.8	 1.05	 100.0	 1	 159	 1.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	15	 206.0	 103.0	 103.0	 -103.0	 1.05	 100.0	 1	 206	 1.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
	15	 179.519	 98.0	 98.0	 -98.0	 1.05	 100.0	 1	 195	 1.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	15	 1.2	 94.8	 94.8	 -94.8	 1.05	 100.0	 1	 162	 1.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	15	 1.2	 94.8	 94.8	 -94.8	 1.05	 100.0	 1	 139	 1.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	15	 206.0	 103.0	 103.0	 -103.0	 1.05	 100.0	 1	 206	 27.15	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	16	 588.0	 -294.0	 294.0	 -294.0	 0.99147	 100.0	 1	 588	 27.15	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	18	 50.0	 -101.588	 200.0	 -191.0	 1.01249	 100.0	 1	 382	 50.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	21	 675.0	 252.724	 338.0	 -338.0	 1.05	 100.0	 1	 675	 50.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
	22	 222.0	 2.077	 111.0	 -111.0	 1.05	 100.0	 1	 222	 5.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	22	 5.0	 1.427	 92.0	 -92.0	 1.05	 100.0	 1	 184	 5.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	22	 5.0	 0.898	 73.0	 -73.0	 1.05	 100.0	 1	 146	 5.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	22	 233.0	 2.307	 117.0	 -117.0	 1.05	 100.0	 1	 233	 5.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
	22	 57.609	 1.966	 108.0	 -108.0	 1.05	 100.0	 1	 216	 5.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	22	 5.0	 0.297	 42.0	 -42.0	 1.05	 100.0	 1	 83	 5.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	23	 190.189	 23.691	 211.0	 -211.0	 1.01434	 100.0	 1	 421	 27.15	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	23	 292.0	 11.423	 146.0	 -146.0	 1.01434	 100.0	 1	 292	 27.15	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
	23	 70.0	 19.46	 191.0	 -191.0	 1.01434	 100.0	 1	 382	 70.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 1500.0	 0.0	 3	   0.000000	   6.850182	   0.000000; % PEL
	2	 1500.0	 0.0	 3	   0.000000	   7.124376	   0.000000; % PEL
	2	 1500.0	 0.0	 3	   0.000000	   6.712021	   0.000000; % PEL
	2	 1500.0	 0.0	 3	   0.000000	   1.071100	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   1.160173	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   7.088017	   0.000000; % PEL
	2	 1500.0	 0.0	 3	   0.000000	   1.096470	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   0.795957	   0.000000; % COW
	2	 1500.0	 0.0	 3	   0.000000	   1.189827	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   1.390575	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   0.647493	   0.000000; % COW
	2	 1500.0	 0.0	 3	   0.000000	   1.448769	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   0.624119	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   0.591971	   0.000000; % COW
	2	 1500.0	 0.0	 3	   0.000000	   0.000000	   0.000000; % SYNC
	2	 1500.0	 0.0	 3	   0.000000	   1.060252	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   0.967569	   0.000000; % COW
	2	 1500.0	 0.0	 3	   0.000000	   1.068705	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   1.155169	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   1.090615	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   0.991563	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   0.914455	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   1.132037	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   0.798725	   0.000000; % COW
	2	 1500.0	 0.0	 3	   0.000000	   0.832815	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   1.146476	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   1.562754	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   0.410983	   0.000000; % COW
	2	 1500.0	 0.0	 3	   0.000000	   0.938082	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   1.108623	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   1.059217	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   0.932837	   0.000000; % COW
	2	 1500.0	 0.0	 3	   0.000000	   1.066818	   0.000000; % NG
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	 2	 0.0026	 0.0139	 0.4611	 175.0	 193.0	 200.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1	 3	 0.0546	 0.2112	 0.0572	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1	 5	 0.0218	 0.0845	 0.0229	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2	 4	 0.0328	 0.1267	 0.0343	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2	 6	 0.0497	 0.192	 0.052	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -30.0	 30.0;
	3	 9	 0.0308	 0.119	 0.0322	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -30.0	 30.0;
	3	 24	 0.0023	 0.0839	 0.0	 400.0	 510.0	 600.0	 1.03	 0.0	 1	 -30.0	 30.0;
	4	 9	 0.0268	 0.1037	 0.0281	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5	 10	 0.0228	 0.0883	 0.0239	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6	 10	 0.0139	 0.0605	 2.459	 175.0	 193.0	 200.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7	 8	 0.0159	 0.0614	 0.0166	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8	 9	 0.0427	 0.1651	 0.0447	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8	 10	 0.0427	 0.1651	 0.0447	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -30.0	 30.0;
	9	 11	 0.0023	 0.0839	 0.0	 400.0	 510.0	 600.0	 1.03	 0.0	 1	 -30.0	 30.0;
	9	 12	 0.0023	 0.0839	 0.0	 400.0	 510.0	 600.0	 1.03	 0.0	 1	 -30.0	 30.0;
	10	 11	 0.0023	 0.0839	 0.0	 400.0	 510.0	 600.0	 1.02	 0.0	 1	 -30.0	 30.0;
	10	 12	 0.0023	 0.0839	 0.0	 400.0	 510.0	 600.0	 1.02	 0.0	 1	 -30.0	 30.0;
	11	 13	 0.0061	 0.0476	 0.0999	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	11	 14	 0.0054	 0.0418	 0.0879	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	12	 13	 0.0061	 0.0476	 0.0999	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	12	 23	 0.0124	 0.0966	 0.203	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	13	 23	 0.0111	 0.0865	 0.1818	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	14	 16	 0.005	 0.0389	 0.0818	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	15	 16	 0.0022	 0.0173	 0.0364	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	15	 21	 0.0063	 0.049	 0.103	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	15	 21	 0.0063	 0.049	 0.103	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	15	 24	 0.0067	 0.0519	 0.1091	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	16	 17	 0.0033	 0.0259	 0.0545	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	16	 19	 0.003	 0.0231	 0.0485	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	17	 18	 0.0018	 0.0144	 0.0303	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	17	 22	 0.0135	 0.1053	 0.2212	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	18	 21	 0.0033	 0.0259	 0.0545	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	18	 21	 0.0033	 0.0259	 0.0545	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	19	 20	 0.0051	 0.0396	 0.0833	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	19	 20	 0.0051	 0.0396	 0.0833	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	20	 23	 0.0028	 0.0216	 0.0455	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	20	 23	 0.0028	 0.0216	 0.0455	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	21	 22	 0.0087	 0.0678	 0.1424	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
];

% INFO    : === Translation Options ===
% INFO    : Load Model:                  from file ./pglib_opf_case24_ieee_rts.m.api.sol
% INFO    : Gen Active Capacity Model:   stat
% INFO    : Gen Reactive Capacity Model: al50ag
% INFO    : Gen Active Cost Model:       stat
% INFO    : 
% INFO    : === Load Replacement Notes ===
% INFO    : Bus 1	: Pd=108.0, Qd=22.0 -> Pd=207.30, Qd=22.00
% INFO    : Bus 2	: Pd=97.0, Qd=20.0 -> Pd=186.19, Qd=20.00
% INFO    : Bus 3	: Pd=180.0, Qd=37.0 -> Pd=345.50, Qd=37.00
% INFO    : Bus 4	: Pd=74.0, Qd=15.0 -> Pd=142.04, Qd=15.00
% INFO    : Bus 5	: Pd=71.0, Qd=14.0 -> Pd=136.28, Qd=14.00
% INFO    : Bus 6	: Pd=136.0, Qd=28.0 -> Pd=261.05, Qd=28.00
% INFO    : Bus 7	: Pd=125.0, Qd=25.0 -> Pd=239.93, Qd=25.00
% INFO    : Bus 8	: Pd=171.0, Qd=35.0 -> Pd=328.23, Qd=35.00
% INFO    : Bus 9	: Pd=175.0, Qd=36.0 -> Pd=335.91, Qd=36.00
% INFO    : Bus 10	: Pd=195.0, Qd=40.0 -> Pd=374.29, Qd=40.00
% INFO    : Bus 11	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 12	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 13	: Pd=265.0, Qd=54.0 -> Pd=508.66, Qd=54.00
% INFO    : Bus 14	: Pd=194.0, Qd=39.0 -> Pd=372.37, Qd=39.00
% INFO    : Bus 15	: Pd=317.0, Qd=64.0 -> Pd=608.47, Qd=64.00
% INFO    : Bus 16	: Pd=100.0, Qd=20.0 -> Pd=191.95, Qd=20.00
% INFO    : Bus 17	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 18	: Pd=333.0, Qd=68.0 -> Pd=639.18, Qd=68.00
% INFO    : Bus 19	: Pd=181.0, Qd=37.0 -> Pd=347.42, Qd=37.00
% INFO    : Bus 20	: Pd=128.0, Qd=26.0 -> Pd=245.69, Qd=26.00
% INFO    : Bus 21	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 22	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 23	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 24	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=16.0, Qg=4.862 -> Pg=73.0, Qg=1.0
% INFO    : Gen at bus 1	: Pg=16.0, Qg=4.862 -> Pg=73.0, Qg=1.0
% INFO    : Gen at bus 1	: Pg=76.0, Qg=-1.576 -> Pg=72.0, Qg=1.0
% INFO    : Gen at bus 1	: Pg=76.0, Qg=-1.576 -> Pg=72.0, Qg=1.0
% INFO    : Gen at bus 2	: Pg=16.0, Qg=4.814 -> Pg=157.0, Qg=31.0
% INFO    : Gen at bus 2	: Pg=16.0, Qg=4.814 -> Pg=157.0, Qg=31.0
% INFO    : Gen at bus 2	: Pg=76.0, Qg=-2.923 -> Pg=156.0, Qg=31.0
% INFO    : Gen at bus 2	: Pg=76.0, Qg=-2.923 -> Pg=156.0, Qg=31.0
% INFO    : Gen at bus 7	: Pg=70.343, Qg=16.438 -> Pg=126.0, Qg=42.0
% INFO    : Gen at bus 7	: Pg=70.343, Qg=16.438 -> Pg=126.0, Qg=42.0
% INFO    : Gen at bus 7	: Pg=70.343, Qg=16.438 -> Pg=126.0, Qg=42.0
% INFO    : Gen at bus 13	: Pg=78.579, Qg=32.592 -> Pg=410.0, Qg=105.0
% INFO    : Gen at bus 13	: Pg=78.579, Qg=32.592 -> Pg=410.0, Qg=105.0
% INFO    : Gen at bus 13	: Pg=78.579, Qg=32.592 -> Pg=410.0, Qg=105.0
% INFO    : Gen at bus 14	: Pg=0.0, Qg=114.908 -> Pg=0.0, Qg=209.0
% INFO    : Gen at bus 15	: Pg=2.4, Qg=6.0 -> Pg=132.0, Qg=79.0
% INFO    : Gen at bus 15	: Pg=2.4, Qg=6.0 -> Pg=132.0, Qg=79.0
% INFO    : Gen at bus 15	: Pg=2.4, Qg=6.0 -> Pg=132.0, Qg=79.0
% INFO    : Gen at bus 15	: Pg=2.4, Qg=6.0 -> Pg=132.0, Qg=79.0
% INFO    : Gen at bus 15	: Pg=2.4, Qg=6.0 -> Pg=132.0, Qg=79.0
% INFO    : Gen at bus 15	: Pg=155.0, Qg=80.0 -> Pg=184.0, Qg=79.0
% INFO    : Gen at bus 16	: Pg=155.0, Qg=80.0 -> Pg=521.0, Qg=-31.0
% INFO    : Gen at bus 18	: Pg=400.0, Qg=72.898 -> Pg=302.0, Qg=32.0
% INFO    : Gen at bus 21	: Pg=400.0, Qg=-7.458 -> Pg=203.0, Qg=-118.0
% INFO    : Gen at bus 22	: Pg=50.0, Qg=-6.413 -> Pg=68.0, Qg=-9.0
% INFO    : Gen at bus 22	: Pg=50.0, Qg=-6.413 -> Pg=68.0, Qg=-9.0
% INFO    : Gen at bus 22	: Pg=50.0, Qg=-6.413 -> Pg=68.0, Qg=-9.0
% INFO    : Gen at bus 22	: Pg=50.0, Qg=-6.413 -> Pg=68.0, Qg=-9.0
% INFO    : Gen at bus 22	: Pg=50.0, Qg=-6.413 -> Pg=68.0, Qg=-9.0
% INFO    : Gen at bus 22	: Pg=50.0, Qg=-6.413 -> Pg=68.0, Qg=-9.0
% INFO    : Gen at bus 23	: Pg=155.0, Qg=2.548 -> Pg=237.0, Qg=15.0
% INFO    : Gen at bus 23	: Pg=155.0, Qg=2.548 -> Pg=237.0, Qg=15.0
% INFO    : Gen at bus 23	: Pg=350.0, Qg=40.548 -> Pg=323.0, Qg=15.0
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Setpoint Value Notes ===
% INFO    : Gen at bus 1	: Qg 1.0, Qmin 0.0, Qmax 10.0 -> Qmin -1.2, Qmax 10.0
% INFO    : Gen at bus 1	: Qg 1.0, Qmin 0.0, Qmax 10.0 -> Qmin -1.2, Qmax 10.0
% INFO    : Gen at bus 2	: Qg 31.0, Qmin 0.0, Qmax 10.0 -> Qmin -37.2, Qmax 37.2
% INFO    : Gen at bus 2	: Qg 31.0, Qmin 0.0, Qmax 10.0 -> Qmin -37.2, Qmax 37.2
% INFO    : Gen at bus 2	: Qg 31.0, Qmin -25.0, Qmax 30.0 -> Qmin -37.2, Qmax 37.2
% INFO    : Gen at bus 2	: Qg 31.0, Qmin -25.0, Qmax 30.0 -> Qmin -37.2, Qmax 37.2
% INFO    : Gen at bus 7	: Qg 42.0, Qmin 0.0, Qmax 60.0 -> Qmin -50.4, Qmax 60.0
% INFO    : Gen at bus 7	: Qg 42.0, Qmin 0.0, Qmax 60.0 -> Qmin -50.4, Qmax 60.0
% INFO    : Gen at bus 7	: Qg 42.0, Qmin 0.0, Qmax 60.0 -> Qmin -50.4, Qmax 60.0
% INFO    : Gen at bus 13	: Qg 105.0, Qmin 0.0, Qmax 80.0 -> Qmin -126.0, Qmax 126.0
% INFO    : Gen at bus 13	: Qg 105.0, Qmin 0.0, Qmax 80.0 -> Qmin -126.0, Qmax 126.0
% INFO    : Gen at bus 13	: Qg 105.0, Qmin 0.0, Qmax 80.0 -> Qmin -126.0, Qmax 126.0
% INFO    : Gen at bus 14	: Qg 209.0, Qmin -50.0, Qmax 200.0 -> Qmin -250.8, Qmax 250.8
% INFO    : Gen at bus 15	: Qg 79.0, Qmin 0.0, Qmax 6.0 -> Qmin -94.8, Qmax 94.8
% INFO    : Gen at bus 15	: Qg 79.0, Qmin 0.0, Qmax 6.0 -> Qmin -94.8, Qmax 94.8
% INFO    : Gen at bus 15	: Qg 79.0, Qmin 0.0, Qmax 6.0 -> Qmin -94.8, Qmax 94.8
% INFO    : Gen at bus 15	: Qg 79.0, Qmin 0.0, Qmax 6.0 -> Qmin -94.8, Qmax 94.8
% INFO    : Gen at bus 15	: Qg 79.0, Qmin 0.0, Qmax 6.0 -> Qmin -94.8, Qmax 94.8
% INFO    : Gen at bus 15	: Qg 79.0, Qmin -50.0, Qmax 80.0 -> Qmin -94.8, Qmax 80.0
% INFO    : Gen at bus 21	: Qg -118.0, Qmin -50.0, Qmax 200.0 -> Qmin -141.6, Qmax 200.0
% INFO    : 
% INFO    : === Generator Classification Notes ===
% INFO    : PEL    4   -     6.70
% INFO    : SYNC   1   -     0.00
% INFO    : COW    7   -    23.79
% INFO    : NG     21  -    69.51
% INFO    : 
% INFO    : === Generator Active Capacity Stat Model Notes ===
% INFO    : Gen at bus 1 - PEL	: Pg=73.0, Pmax=20.0 -> Pmax=79   samples: 7
% INFO    : Gen at bus 1 - PEL	: Pg=73.0, Pmax=20.0 -> Pmax=211   samples: 1
% INFO    : Gen at bus 1 - PEL	: Pg=72.0, Pmax=76.0 -> Pmax=75   samples: 9
% INFO    : Gen at bus 1 - NG	: Pg=72.0, Pmax=76.0 -> Pmax=78   samples: 2
% INFO    : Gen at bus 2 - NG	: Pg=157.0, Pmax=20.0 -> Pmax=188   samples: 1
% WARNING : Failed to find a generator capacity within (157.0-785.0) after 100 samples, using percent increase model
% INFO    : Gen at bus 2 - PEL	: Pg=157.0, Pmax=20.0 -> Pmax=182   samples: 100
% INFO    : Gen at bus 2 - NG	: Pg=156.0, Pmax=76.0 -> Pmax=176   samples: 1
% INFO    : Gen at bus 2 - COW	: Pg=156.0, Pmax=76.0 -> Pmax=663   samples: 3
% INFO    : Gen at bus 7 - NG	: Pg=126.0, Pmax=100.0 -> Pmax=430   samples: 2
% INFO    : Gen at bus 7 - NG	: Pg=126.0, Pmax=100.0 -> Pmax=153   samples: 1
% INFO    : Gen at bus 7 - COW	: Pg=126.0, Pmax=100.0 -> Pmax=595   samples: 1
% INFO    : Gen at bus 13 - NG	: Pg=410.0, Pmax=197.0 -> Pmax=544   samples: 18
% INFO    : Gen at bus 13 - NG	: Pg=410.0, Pmax=197.0 -> Pmax=542   samples: 17
% INFO    : Gen at bus 13 - COW	: Pg=410.0, Pmax=197.0 -> Pmax=609   samples: 2
% INFO    : Gen at bus 14 - SYNC	: Pg=0.0, Pmax=0.0 -> Pmax=0   samples: 0
% INFO    : Gen at bus 15 - NG	: Pg=132.0, Pmax=12.0 -> Pmax=159   samples: 4
% INFO    : Gen at bus 15 - COW	: Pg=132.0, Pmax=12.0 -> Pmax=206   samples: 2
% INFO    : Gen at bus 15 - NG	: Pg=132.0, Pmax=12.0 -> Pmax=195   samples: 3
% INFO    : Gen at bus 15 - NG	: Pg=132.0, Pmax=12.0 -> Pmax=162   samples: 10
% INFO    : Gen at bus 15 - NG	: Pg=132.0, Pmax=12.0 -> Pmax=139   samples: 1
% INFO    : Gen at bus 15 - NG	: Pg=184.0, Pmax=155.0 -> Pmax=206   samples: 1
% WARNING : Failed to find a generator capacity within (521.0-2605.0) after 100 samples, using percent increase model
% INFO    : Gen at bus 16 - NG	: Pg=521.0, Pmax=155.0 -> Pmax=588   samples: 100
% INFO    : Gen at bus 18 - NG	: Pg=302.0, Pmax=400.0 -> Pmax=382   samples: 10
% INFO    : Gen at bus 21 - COW	: Pg=203.0, Pmax=400.0 -> Pmax=675   samples: 2
% INFO    : Gen at bus 22 - NG	: Pg=68.0, Pmax=50.0 -> Pmax=222   samples: 2
% INFO    : Gen at bus 22 - NG	: Pg=68.0, Pmax=50.0 -> Pmax=184   samples: 1
% INFO    : Gen at bus 22 - NG	: Pg=68.0, Pmax=50.0 -> Pmax=146   samples: 2
% INFO    : Gen at bus 22 - COW	: Pg=68.0, Pmax=50.0 -> Pmax=233   samples: 1
% INFO    : Gen at bus 22 - NG	: Pg=68.0, Pmax=50.0 -> Pmax=216   samples: 1
% INFO    : Gen at bus 22 - NG	: Pg=68.0, Pmax=50.0 -> Pmax=83   samples: 1
% INFO    : Gen at bus 23 - NG	: Pg=237.0, Pmax=155.0 -> Pmax=421   samples: 2
% INFO    : Gen at bus 23 - COW	: Pg=237.0, Pmax=155.0 -> Pmax=292   samples: 3
% INFO    : Gen at bus 23 - NG	: Pg=323.0, Pmax=350.0 -> Pmax=382   samples: 35
% INFO    : 
% INFO    : === Generator Active Capacity LB Model Notes ===
% INFO    : Gen at bus 1	: Pmin=16.0 -> Pmin=8.0 
% INFO    : Gen at bus 1	: Pmin=16.0 -> Pmin=8.0 
% INFO    : Gen at bus 1	: Pmin=15.2 -> Pmin=7.6 
% INFO    : Gen at bus 1	: Pmin=15.2 -> Pmin=7.6 
% INFO    : Gen at bus 2	: Pmin=16.0 -> Pmin=8.0 
% INFO    : Gen at bus 2	: Pmin=16.0 -> Pmin=8.0 
% INFO    : Gen at bus 2	: Pmin=15.2 -> Pmin=7.6 
% INFO    : Gen at bus 2	: Pmin=15.2 -> Pmin=7.6 
% INFO    : Gen at bus 7	: Pmin=25.0 -> Pmin=12.5 
% INFO    : Gen at bus 7	: Pmin=25.0 -> Pmin=12.5 
% INFO    : Gen at bus 7	: Pmin=25.0 -> Pmin=12.5 
% INFO    : Gen at bus 13	: Pmin=69.0 -> Pmin=34.5 
% INFO    : Gen at bus 13	: Pmin=69.0 -> Pmin=34.5 
% INFO    : Gen at bus 13	: Pmin=69.0 -> Pmin=34.5 
% INFO    : Gen at bus 15	: Pmin=2.4 -> Pmin=1.2 
% INFO    : Gen at bus 15	: Pmin=2.4 -> Pmin=1.2 
% INFO    : Gen at bus 15	: Pmin=2.4 -> Pmin=1.2 
% INFO    : Gen at bus 15	: Pmin=2.4 -> Pmin=1.2 
% INFO    : Gen at bus 15	: Pmin=2.4 -> Pmin=1.2 
% INFO    : Gen at bus 15	: Pmin=54.3 -> Pmin=27.15 
% INFO    : Gen at bus 16	: Pmin=54.3 -> Pmin=27.15 
% INFO    : Gen at bus 18	: Pmin=100.0 -> Pmin=50.0 
% INFO    : Gen at bus 21	: Pmin=100.0 -> Pmin=50.0 
% INFO    : Gen at bus 22	: Pmin=10.0 -> Pmin=5.0 
% INFO    : Gen at bus 22	: Pmin=10.0 -> Pmin=5.0 
% INFO    : Gen at bus 22	: Pmin=10.0 -> Pmin=5.0 
% INFO    : Gen at bus 22	: Pmin=10.0 -> Pmin=5.0 
% INFO    : Gen at bus 22	: Pmin=10.0 -> Pmin=5.0 
% INFO    : Gen at bus 22	: Pmin=10.0 -> Pmin=5.0 
% INFO    : Gen at bus 23	: Pmin=54.3 -> Pmin=27.15 
% INFO    : Gen at bus 23	: Pmin=54.3 -> Pmin=27.15 
% INFO    : Gen at bus 23	: Pmin=140.0 -> Pmin=70.0 
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Max 50 Percent Active Model Notes ===
% INFO    : Gen at bus 1 - PEL	: Pmax 79.0, Qmin -1.2, Qmax 10.0 -> Qmin -40.0, Qmax 40.0
% INFO    : Gen at bus 1 - PEL	: Pmax 211.0, Qmin -1.2, Qmax 10.0 -> Qmin -106.0, Qmax 106.0
% INFO    : Gen at bus 1 - PEL	: Pmax 75.0, Qmin -25.0, Qmax 30.0 -> Qmin -38.0, Qmax 38.0
% INFO    : Gen at bus 1 - NG	: Pmax 78.0, Qmin -25.0, Qmax 30.0 -> Qmin -39.0, Qmax 39.0
% INFO    : Gen at bus 2 - NG	: Pmax 188.0, Qmin -37.2, Qmax 37.2 -> Qmin -94.0, Qmax 94.0
% INFO    : Gen at bus 2 - PEL	: Pmax 182.0, Qmin -37.2, Qmax 37.2 -> Qmin -91.0, Qmax 91.0
% INFO    : Gen at bus 2 - NG	: Pmax 176.0, Qmin -37.2, Qmax 37.2 -> Qmin -88.0, Qmax 88.0
% INFO    : Gen at bus 2 - COW	: Pmax 663.0, Qmin -37.2, Qmax 37.2 -> Qmin -332.0, Qmax 332.0
% INFO    : Gen at bus 7 - NG	: Pmax 430.0, Qmin -50.4, Qmax 60.0 -> Qmin -215.0, Qmax 215.0
% INFO    : Gen at bus 7 - NG	: Pmax 153.0, Qmin -50.4, Qmax 60.0 -> Qmin -77.0, Qmax 77.0
% INFO    : Gen at bus 7 - COW	: Pmax 595.0, Qmin -50.4, Qmax 60.0 -> Qmin -298.0, Qmax 298.0
% INFO    : Gen at bus 13 - NG	: Pmax 544.0, Qmin -126.0, Qmax 126.0 -> Qmin -272.0, Qmax 272.0
% INFO    : Gen at bus 13 - NG	: Pmax 542.0, Qmin -126.0, Qmax 126.0 -> Qmin -271.0, Qmax 271.0
% INFO    : Gen at bus 13 - COW	: Pmax 609.0, Qmin -126.0, Qmax 126.0 -> Qmin -305.0, Qmax 305.0
% INFO    : Gen at bus 15 - COW	: Pmax 206.0, Qmin -94.8, Qmax 94.8 -> Qmin -103.0, Qmax 103.0
% INFO    : Gen at bus 15 - NG	: Pmax 195.0, Qmin -94.8, Qmax 94.8 -> Qmin -98.0, Qmax 98.0
% INFO    : Gen at bus 15 - NG	: Pmax 206.0, Qmin -94.8, Qmax 80.0 -> Qmin -103.0, Qmax 103.0
% INFO    : Gen at bus 16 - NG	: Pmax 588.0, Qmin -50.0, Qmax 80.0 -> Qmin -294.0, Qmax 294.0
% INFO    : Gen at bus 18 - NG	: Pmax 382.0, Qmin -50.0, Qmax 200.0 -> Qmin -191.0, Qmax 200.0
% INFO    : Gen at bus 21 - COW	: Pmax 675.0, Qmin -141.6, Qmax 200.0 -> Qmin -338.0, Qmax 338.0
% INFO    : Gen at bus 22 - NG	: Pmax 222.0, Qmin -10.0, Qmax 16.0 -> Qmin -111.0, Qmax 111.0
% INFO    : Gen at bus 22 - NG	: Pmax 184.0, Qmin -10.0, Qmax 16.0 -> Qmin -92.0, Qmax 92.0
% INFO    : Gen at bus 22 - NG	: Pmax 146.0, Qmin -10.0, Qmax 16.0 -> Qmin -73.0, Qmax 73.0
% INFO    : Gen at bus 22 - COW	: Pmax 233.0, Qmin -10.0, Qmax 16.0 -> Qmin -117.0, Qmax 117.0
% INFO    : Gen at bus 22 - NG	: Pmax 216.0, Qmin -10.0, Qmax 16.0 -> Qmin -108.0, Qmax 108.0
% INFO    : Gen at bus 22 - NG	: Pmax 83.0, Qmin -10.0, Qmax 16.0 -> Qmin -42.0, Qmax 42.0
% INFO    : Gen at bus 23 - NG	: Pmax 421.0, Qmin -50.0, Qmax 80.0 -> Qmin -211.0, Qmax 211.0
% INFO    : Gen at bus 23 - COW	: Pmax 292.0, Qmin -50.0, Qmax 80.0 -> Qmin -146.0, Qmax 146.0
% INFO    : Gen at bus 23 - NG	: Pmax 382.0, Qmin -25.0, Qmax 150.0 -> Qmin -191.0, Qmax 191.0
% INFO    : 
% INFO    : === Generator Active Cost Stat Model Notes ===
% INFO    : Updated Generator Cost: PEL - 400.6849 130.0 0.0 -> 0 6.85018192661 0
% INFO    : Updated Generator Cost: PEL - 400.6849 130.0 0.0 -> 0 7.1243760858 0
% INFO    : Updated Generator Cost: PEL - 212.3076 16.0811 0.014142 -> 0 6.71202069881 0
% INFO    : Updated Generator Cost: NG - 212.3076 16.0811 0.014142 -> 0 1.07110017835 0
% INFO    : Updated Generator Cost: NG - 400.6849 130.0 0.0 -> 0 1.16017270718 0
% INFO    : Updated Generator Cost: PEL - 400.6849 130.0 0.0 -> 0 7.08801677482 0
% INFO    : Updated Generator Cost: NG - 212.3076 16.0811 0.014142 -> 0 1.09647017396 0
% INFO    : Updated Generator Cost: COW - 212.3076 16.0811 0.014142 -> 0 0.795957453246 0
% INFO    : Updated Generator Cost: NG - 781.521 43.6615 0.052672 -> 0 1.18982676449 0
% INFO    : Updated Generator Cost: NG - 781.521 43.6615 0.052672 -> 0 1.39057521579 0
% INFO    : Updated Generator Cost: COW - 781.521 43.6615 0.052672 -> 0 0.647493182425 0
% INFO    : Updated Generator Cost: NG - 832.7575 48.5804 0.00717 -> 0 1.44876861936 0
% INFO    : Updated Generator Cost: NG - 832.7575 48.5804 0.00717 -> 0 0.624118509779 0
% INFO    : Updated Generator Cost: COW - 832.7575 48.5804 0.00717 -> 0 0.591970720649 0
% INFO    : Updated Generator Cost: SYNC - 0.0 0.0 0.0 -> 0 0.0 0
% INFO    : Updated Generator Cost: NG - 86.3852 56.564 0.328412 -> 0 1.06025214337 0
% INFO    : Updated Generator Cost: COW - 86.3852 56.564 0.328412 -> 0 0.967568797787 0
% INFO    : Updated Generator Cost: NG - 86.3852 56.564 0.328412 -> 0 1.06870497436 0
% INFO    : Updated Generator Cost: NG - 86.3852 56.564 0.328412 -> 0 1.15516935031 0
% INFO    : Updated Generator Cost: NG - 86.3852 56.564 0.328412 -> 0 1.09061545781 0
% INFO    : Updated Generator Cost: NG - 382.2391 12.3883 0.008342 -> 0 0.991562777124 0
% INFO    : Updated Generator Cost: NG - 382.2391 12.3883 0.008342 -> 0 0.914454747342 0
% INFO    : Updated Generator Cost: NG - 395.3749 4.4231 0.000213 -> 0 1.13203660123 0
% INFO    : Updated Generator Cost: COW - 395.3749 4.4231 0.000213 -> 0 0.798725125921 0
% INFO    : Updated Generator Cost: NG - 0.001 0.001 0.0 -> 0 0.832815270754 0
% INFO    : Updated Generator Cost: NG - 0.001 0.001 0.0 -> 0 1.14647632638 0
% INFO    : Updated Generator Cost: NG - 0.001 0.001 0.0 -> 0 1.56275390351 0
% INFO    : Updated Generator Cost: COW - 0.001 0.001 0.0 -> 0 0.410983457136 0
% INFO    : Updated Generator Cost: NG - 0.001 0.001 0.0 -> 0 0.938082086415 0
% INFO    : Updated Generator Cost: NG - 0.001 0.001 0.0 -> 0 1.10862318205 0
% INFO    : Updated Generator Cost: NG - 382.2391 12.3883 0.008342 -> 0 1.05921746823 0
% INFO    : Updated Generator Cost: COW - 382.2391 12.3883 0.008342 -> 0 0.932836596792 0
% INFO    : Updated Generator Cost: NG - 665.1094 11.8495 0.004895 -> 0 1.06681841899 0
% INFO    : 
% INFO    : === Voltage Setpoint Replacement Notes ===
% INFO    : Bus 1	: V=1.04723, theta=-6.75543 -> V=1.04533, theta=-15.56575
% INFO    : Bus 2	: V=1.04721, theta=-6.83108 -> V=1.05, theta=-14.31115
% INFO    : Bus 3	: V=1.01378, theta=-6.18747 -> V=0.95143, theta=-20.06408
% INFO    : Bus 4	: V=1.01625, theta=-9.57433 -> V=0.96623, theta=-22.707
% INFO    : Bus 5	: V=1.03543, theta=-9.73755 -> V=0.98661, theta=-22.94428
% INFO    : Bus 6	: V=1.03241, theta=-12.31055 -> V=0.95, theta=-28.98084
% INFO    : Bus 7	: V=1.036, theta=-9.87656 -> V=1.02558, theta=-28.33121
% INFO    : Bus 8	: V=1.00896, theta=-12.55316 -> V=0.95, theta=-32.85161
% INFO    : Bus 9	: V=1.02393, theta=-7.81824 -> V=0.9596, theta=-21.29785
% INFO    : Bus 10	: V=1.05, theta=-9.67832 -> V=0.97648, theta=-24.17775
% INFO    : Bus 11	: V=1.02263, theta=-2.61309 -> V=0.96509, theta=-9.84003
% INFO    : Bus 12	: V=1.01727, theta=-1.87607 -> V=0.96966, theta=-8.66095
% INFO    : Bus 13	: V=1.03348, theta=0.0 -> V=1.05, theta=-0.0
% INFO    : Bus 14	: V=1.03987, theta=1.01244 -> V=0.96755, theta=-6.91843
% INFO    : Bus 15	: V=1.04106, theta=9.32436 -> V=1.05, theta=6.10832
% INFO    : Bus 16	: V=1.04428, theta=8.54258 -> V=0.99147, theta=4.59459
% INFO    : Bus 17	: V=1.04756, theta=12.89163 -> V=1.00706, theta=7.60508
% INFO    : Bus 18	: V=1.05, theta=14.24704 -> V=1.01249, theta=7.3432
% INFO    : Bus 19	: V=1.03895, theta=7.49316 -> V=0.98801, theta=0.48633
% INFO    : Bus 20	: V=1.04397, theta=8.4523 -> V=1.0016, theta=0.94766
% INFO    : Bus 21	: V=1.05, theta=15.02296 -> V=1.05, theta=11.08688
% INFO    : Bus 22	: V=1.05, theta=20.69119 -> V=1.05, theta=21.25155
% INFO    : Bus 23	: V=1.05, theta=9.68377 -> V=1.01434, theta=2.67879
% INFO    : Bus 24	: V=1.00585, theta=3.66828 -> V=0.96902, theta=-2.8858
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=73.0, Qg=1.0 -> Pg=79.0, Qg=7.632
% INFO    : Gen at bus 1	: Vg=1.04723 -> Vg=1.04533
% INFO    : Gen at bus 1	: Pg=73.0, Qg=1.0 -> Pg=15.459, Qg=45.412
% INFO    : Gen at bus 1	: Vg=1.04723 -> Vg=1.04533
% INFO    : Gen at bus 1	: Pg=72.0, Qg=1.0 -> Pg=75.0, Qg=6.912
% INFO    : Gen at bus 1	: Vg=1.04723 -> Vg=1.04533
% INFO    : Gen at bus 1	: Pg=72.0, Qg=1.0 -> Pg=78.0, Qg=7.268
% INFO    : Gen at bus 1	: Vg=1.04723 -> Vg=1.04533
% INFO    : Gen at bus 2	: Pg=157.0, Qg=31.0 -> Pg=8.0, Qg=4.992
% INFO    : Gen at bus 2	: Vg=1.04721 -> Vg=1.05
% INFO    : Gen at bus 2	: Pg=157.0, Qg=31.0 -> Pg=8.0, Qg=4.679
% INFO    : Gen at bus 2	: Vg=1.04721 -> Vg=1.05
% INFO    : Gen at bus 2	: Pg=156.0, Qg=31.0 -> Pg=7.6, Qg=4.376
% INFO    : Gen at bus 2	: Vg=1.04721 -> Vg=1.05
% INFO    : Gen at bus 2	: Pg=156.0, Qg=31.0 -> Pg=605.536, Qg=60.378
% INFO    : Gen at bus 2	: Vg=1.04721 -> Vg=1.05
% INFO    : Gen at bus 7	: Pg=126.0, Qg=42.0 -> Pg=12.5, Qg=38.905
% INFO    : Gen at bus 7	: Vg=1.036 -> Vg=1.02558
% INFO    : Gen at bus 7	: Pg=126.0, Qg=42.0 -> Pg=12.5, Qg=5.136
% INFO    : Gen at bus 7	: Vg=1.036 -> Vg=1.02558
% INFO    : Gen at bus 7	: Pg=126.0, Qg=42.0 -> Pg=363.97, Qg=72.676
% INFO    : Gen at bus 7	: Vg=1.036 -> Vg=1.02558
% INFO    : Gen at bus 13	: Pg=410.0, Qg=105.0 -> Pg=34.5, Qg=128.592
% INFO    : Gen at bus 13	: Vg=1.03348 -> Vg=1.05
% INFO    : Gen at bus 13	: Pg=410.0, Qg=105.0 -> Pg=542.0, Qg=127.82
% INFO    : Gen at bus 13	: Vg=1.03348 -> Vg=1.05
% INFO    : Gen at bus 13	: Pg=410.0, Qg=105.0 -> Pg=609.0, Qg=154.669
% INFO    : Gen at bus 13	: Vg=1.03348 -> Vg=1.05
% INFO    : Gen at bus 14	: Pg=0.0, Qg=209.0 -> Pg=0.0, Qg=77.54
% INFO    : Gen at bus 14	: Vg=1.03987 -> Vg=0.96755
% INFO    : Gen at bus 15	: Pg=132.0, Qg=79.0 -> Pg=159.0, Qg=94.8
% INFO    : Gen at bus 15	: Vg=1.04106 -> Vg=1.05
% INFO    : Gen at bus 15	: Pg=132.0, Qg=79.0 -> Pg=206.0, Qg=103.0
% INFO    : Gen at bus 15	: Vg=1.04106 -> Vg=1.05
% INFO    : Gen at bus 15	: Pg=132.0, Qg=79.0 -> Pg=179.519, Qg=98.0
% INFO    : Gen at bus 15	: Vg=1.04106 -> Vg=1.05
% INFO    : Gen at bus 15	: Pg=132.0, Qg=79.0 -> Pg=1.2, Qg=94.8
% INFO    : Gen at bus 15	: Vg=1.04106 -> Vg=1.05
% INFO    : Gen at bus 15	: Pg=132.0, Qg=79.0 -> Pg=1.2, Qg=94.8
% INFO    : Gen at bus 15	: Vg=1.04106 -> Vg=1.05
% INFO    : Gen at bus 15	: Pg=184.0, Qg=79.0 -> Pg=206.0, Qg=103.0
% INFO    : Gen at bus 15	: Vg=1.04106 -> Vg=1.05
% INFO    : Gen at bus 16	: Pg=521.0, Qg=-31.0 -> Pg=588.0, Qg=-294.0
% INFO    : Gen at bus 16	: Vg=1.04428 -> Vg=0.99147
% INFO    : Gen at bus 18	: Pg=302.0, Qg=32.0 -> Pg=50.0, Qg=-101.588
% INFO    : Gen at bus 18	: Vg=1.05 -> Vg=1.01249
% INFO    : Gen at bus 21	: Pg=203.0, Qg=-118.0 -> Pg=675.0, Qg=252.724
% INFO    : Gen at bus 21	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 22	: Pg=68.0, Qg=-9.0 -> Pg=222.0, Qg=2.077
% INFO    : Gen at bus 22	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 22	: Pg=68.0, Qg=-9.0 -> Pg=5.0, Qg=1.427
% INFO    : Gen at bus 22	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 22	: Pg=68.0, Qg=-9.0 -> Pg=5.0, Qg=0.898
% INFO    : Gen at bus 22	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 22	: Pg=68.0, Qg=-9.0 -> Pg=233.0, Qg=2.307
% INFO    : Gen at bus 22	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 22	: Pg=68.0, Qg=-9.0 -> Pg=57.609, Qg=1.966
% INFO    : Gen at bus 22	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 22	: Pg=68.0, Qg=-9.0 -> Pg=5.0, Qg=0.297
% INFO    : Gen at bus 22	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 23	: Pg=237.0, Qg=15.0 -> Pg=190.189, Qg=23.691
% INFO    : Gen at bus 23	: Vg=1.05 -> Vg=1.01434
% INFO    : Gen at bus 23	: Pg=237.0, Qg=15.0 -> Pg=292.0, Qg=11.423
% INFO    : Gen at bus 23	: Vg=1.05 -> Vg=1.01434
% INFO    : Gen at bus 23	: Pg=323.0, Qg=15.0 -> Pg=70.0, Qg=19.46
% INFO    : Gen at bus 23	: Vg=1.05 -> Vg=1.01434
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
