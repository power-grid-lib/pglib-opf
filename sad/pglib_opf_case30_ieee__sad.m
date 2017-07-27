%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%    IEEE PES Power Grid Library - Optimal Power Flow - v17.07     %%%%%
%%%%          (https://github.com/power-grid-lib/pglib-opf)           %%%%%
%%%%             Benchmark Group - Small Angle Difference             %%%%%
%%%%                         24 - July - 2017                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = pglib_opf_case30_ieee__sad
mpc.version = '2';
mpc.baseMVA = 100.0;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	 3	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 132.0	 1	    1.06000	    0.94000;
	2	 2	 21.7	 12.7	 0.0	 0.0	 1	    1.00000	    0.00000	 132.0	 1	    1.06000	    0.94000;
	3	 1	 2.4	 1.2	 0.0	 0.0	 1	    1.00000	    0.00000	 132.0	 1	    1.06000	    0.94000;
	4	 1	 7.6	 1.6	 0.0	 0.0	 1	    1.00000	    0.00000	 132.0	 1	    1.06000	    0.94000;
	5	 2	 94.2	 19.0	 0.0	 0.0	 1	    1.00000	    0.00000	 132.0	 1	    1.06000	    0.94000;
	6	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 132.0	 1	    1.06000	    0.94000;
	7	 1	 22.8	 10.9	 0.0	 0.0	 1	    1.00000	    0.00000	 132.0	 1	    1.06000	    0.94000;
	8	 2	 30.0	 30.0	 0.0	 0.0	 1	    1.00000	    0.00000	 132.0	 1	    1.06000	    0.94000;
	9	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	10	 1	 5.8	 2.0	 0.0	 19.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	11	 2	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 11.0	 1	    1.06000	    0.94000;
	12	 1	 11.2	 7.5	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	13	 2	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 11.0	 1	    1.06000	    0.94000;
	14	 1	 6.2	 1.6	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	15	 1	 8.2	 2.5	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	16	 1	 3.5	 1.8	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	17	 1	 9.0	 5.8	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	18	 1	 3.2	 0.9	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	19	 1	 9.5	 3.4	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	20	 1	 2.2	 0.7	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	21	 1	 17.5	 11.2	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	22	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	23	 1	 3.2	 1.6	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	24	 1	 8.7	 6.7	 0.0	 4.3	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	25	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	26	 1	 3.5	 2.3	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	27	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	28	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 132.0	 1	    1.06000	    0.94000;
	29	 1	 2.4	 0.9	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	30	 1	 10.6	 1.9	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	 135.5	 5.0	 10.0	 0.0	 1.06	 100.0	 1	 271.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	2	 46.0	 3.0	 46.0	 -40.0	 1.045	 100.0	 1	 92.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	5	 0.0	 0.0	 40.0	 -40.0	 1.01	 100.0	 1	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	8	 0.0	 15.0	 40.0	 -10.0	 1.01	 100.0	 1	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	11	 0.0	 9.0	 24.0	 -6.0	 1.082	 100.0	 1	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	13	 0.0	 9.0	 24.0	 -6.0	 1.071	 100.0	 1	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 0.0	 0.0	 3	   0.000000	   0.771025	   0.000000;
	2	 0.0	 0.0	 3	   0.000000	   1.387763	   0.000000;
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000;
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000;
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000;
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	 2	 0.0192	 0.0575	 0.0528	 138.0	 138.0	 138.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	1	 3	 0.0452	 0.1652	 0.0408	 152.0	 152.0	 152.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	2	 4	 0.057	 0.1737	 0.0368	 139.0	 139.0	 139.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	3	 4	 0.0132	 0.0379	 0.0084	 135.0	 135.0	 135.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	2	 5	 0.0472	 0.1983	 0.0418	 144.0	 144.0	 144.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	2	 6	 0.0581	 0.1763	 0.0374	 139.0	 139.0	 139.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	4	 6	 0.0119	 0.0414	 0.009	 148.0	 148.0	 148.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	5	 7	 0.046	 0.116	 0.0204	 127.0	 127.0	 127.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	6	 7	 0.0267	 0.082	 0.017	 140.0	 140.0	 140.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	6	 8	 0.012	 0.042	 0.009	 148.0	 148.0	 148.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	6	 9	 0.0	 0.208	 0.0	 142.0	 142.0	 142.0	 0.978	 0.0	 1	 -9.207583	 9.207583;
	6	 10	 0.0	 0.556	 0.0	 53.0	 53.0	 53.0	 0.969	 0.0	 1	 -9.207583	 9.207583;
	9	 11	 0.0	 0.208	 0.0	 142.0	 142.0	 142.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	9	 10	 0.0	 0.11	 0.0	 267.0	 267.0	 267.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	4	 12	 0.0	 0.256	 0.0	 115.0	 115.0	 115.0	 0.932	 0.0	 1	 -9.207583	 9.207583;
	12	 13	 0.0	 0.14	 0.0	 210.0	 210.0	 210.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	12	 14	 0.1231	 0.2559	 0.0	 29.0	 29.0	 29.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	12	 15	 0.0662	 0.1304	 0.0	 29.0	 29.0	 29.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	12	 16	 0.0945	 0.1987	 0.0	 30.0	 30.0	 30.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	14	 15	 0.221	 0.1997	 0.0	 20.0	 20.0	 20.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	16	 17	 0.0524	 0.1923	 0.0	 38.0	 38.0	 38.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	15	 18	 0.1073	 0.2185	 0.0	 29.0	 29.0	 29.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	18	 19	 0.0639	 0.1292	 0.0	 29.0	 29.0	 29.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	19	 20	 0.034	 0.068	 0.0	 29.0	 29.0	 29.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	10	 20	 0.0936	 0.209	 0.0	 30.0	 30.0	 30.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	10	 17	 0.0324	 0.0845	 0.0	 33.0	 33.0	 33.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	10	 21	 0.0348	 0.0749	 0.0	 30.0	 30.0	 30.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	10	 22	 0.0727	 0.1499	 0.0	 29.0	 29.0	 29.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	21	 22	 0.0116	 0.0236	 0.0	 29.0	 29.0	 29.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	15	 23	 0.1	 0.202	 0.0	 29.0	 29.0	 29.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	22	 24	 0.115	 0.179	 0.0	 26.0	 26.0	 26.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	23	 24	 0.132	 0.27	 0.0	 29.0	 29.0	 29.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	24	 25	 0.1885	 0.3292	 0.0	 27.0	 27.0	 27.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	25	 26	 0.2544	 0.38	 0.0	 25.0	 25.0	 25.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	25	 27	 0.1093	 0.2087	 0.0	 28.0	 28.0	 28.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	28	 27	 0.0	 0.396	 0.0	 75.0	 75.0	 75.0	 0.968	 0.0	 1	 -9.207583	 9.207583;
	27	 29	 0.2198	 0.4153	 0.0	 28.0	 28.0	 28.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	27	 30	 0.3202	 0.6027	 0.0	 28.0	 28.0	 28.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	29	 30	 0.2399	 0.4533	 0.0	 28.0	 28.0	 28.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	8	 28	 0.0636	 0.2	 0.0428	 140.0	 140.0	 140.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
	6	 28	 0.0169	 0.0599	 0.013	 149.0	 149.0	 149.0	 0.0	 0.0	 1	 -9.207583	 9.207583;
];

% INFO    : === Translation Options ===
% INFO    : Phase Angle Bound:           9.207583 (deg.)
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
