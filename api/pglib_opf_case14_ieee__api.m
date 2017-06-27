%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%    IEEE PES Power Grid Library - Optimal Power Flow - v17.07     %%%%%
%%%%          (https://github.com/power-grid-lib/pglib-opf)           %%%%%
%%%%             Benchmark Group - Active Power Increase              %%%%%
%%%%                         27 - June - 2017                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = pglib_opf_case14_ieee__api
mpc.version = '2';
mpc.baseMVA = 100.0;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	 3	 0.00	 0.00	 0.0	 0.0	 1	    1.06000	    0.00000	 0.0	 1	    1.06000	    0.94000;
	2	 2	 42.66	 12.70	 0.0	 0.0	 1	    1.00298	   -6.31115	 0.0	 1	    1.06000	    0.94000;
	3	 2	 185.17	 19.00	 0.0	 0.0	 1	    0.94484	  -23.37371	 0.0	 1	    1.06000	    0.94000;
	4	 1	 47.80	 -3.90	 0.0	 0.0	 1	    0.95768	  -17.19836	 0.0	 1	    1.06000	    0.94000;
	5	 1	 14.94	 1.60	 0.0	 0.0	 1	    0.96528	  -14.73278	 0.0	 1	    1.06000	    0.94000;
	6	 2	 22.02	 7.50	 0.0	 0.0	 1	    1.06000	  -26.36428	 0.0	 1	    1.06000	    0.94000;
	7	 1	 0.00	 0.00	 0.0	 0.0	 1	    1.01423	  -23.88987	 0.0	 1	    1.06000	    0.94000;
	8	 2	 0.00	 0.00	 0.0	 0.0	 1	    1.06000	  -23.88987	 0.0	 1	    1.06000	    0.94000;
	9	 1	 57.99	 16.60	 0.0	 19.0	 1	    1.00934	  -27.29923	 0.0	 1	    1.06000	    0.94000;
	10	 1	 17.69	 5.80	 0.0	 0.0	 1	    1.00754	  -27.82274	 0.0	 1	    1.06000	    0.94000;
	11	 1	 6.88	 1.80	 0.0	 0.0	 1	    1.02802	  -27.38438	 0.0	 1	    1.06000	    0.94000;
	12	 1	 11.99	 1.60	 0.0	 0.0	 1	    1.03375	  -28.21607	 0.0	 1	    1.06000	    0.94000;
	13	 1	 26.54	 5.80	 0.0	 0.0	 1	    1.02392	  -28.40279	 0.0	 1	    1.06000	    0.94000;
	14	 1	 29.29	 5.00	 0.0	 0.0	 1	    0.98548	  -30.12322	 0.0	 1	    1.06000	    0.94000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	 335.767	 68.001	 199.0	 -199.0	 1.06	 100.0	 1	 398	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	2	 168.468	 4.067	 115.0	 -115.0	 1.00298	 100.0	 1	 230	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	3	 0.0	 57.548	 72.0	 -72.0	 0.94484	 100.0	 1	 0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % SYNC
	6	 0.0	 52.227	 56.4	 -56.4	 1.06	 100.0	 1	 0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % SYNC
	8	 0.0	 27.545	 30.0	 -30.0	 1.06	 100.0	 1	 0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % SYNC
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 0.0	 0.0	 3	   0.000000	   1.321234	   0.000000; % NG
	2	 0.0	 0.0	 3	   0.000000	   1.236656	   0.000000; % NG
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000; % SYNC
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000; % SYNC
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000; % SYNC
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	 2	 0.01938	 0.05917	 0.0528	 472.0	 472.0	 472.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1	 5	 0.05403	 0.22304	 0.0492	 128.0	 128.0	 128.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2	 3	 0.04699	 0.19797	 0.0438	 145.0	 145.0	 145.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2	 4	 0.05811	 0.17632	 0.034	 158.0	 158.0	 158.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2	 5	 0.05695	 0.17388	 0.0346	 161.0	 161.0	 161.0	 0.0	 0.0	 1	 -30.0	 30.0;
	3	 4	 0.06701	 0.17103	 0.0128	 160.0	 160.0	 160.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4	 5	 0.01335	 0.04211	 0.0	 664.0	 664.0	 664.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4	 7	 0.0	 0.20912	 0.0	 141.0	 141.0	 141.0	 0.978	 0.0	 1	 -30.0	 30.0;
	4	 9	 0.0	 0.55618	 0.0	 53.0	 53.0	 53.0	 0.969	 0.0	 1	 -30.0	 30.0;
	5	 6	 0.0	 0.25202	 0.0	 117.0	 117.0	 117.0	 0.932	 0.0	 1	 -30.0	 30.0;
	6	 11	 0.09498	 0.1989	 0.0	 134.0	 134.0	 134.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6	 12	 0.12291	 0.25581	 0.0	 104.0	 104.0	 104.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6	 13	 0.06615	 0.13027	 0.0	 201.0	 201.0	 201.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7	 8	 0.0	 0.17615	 0.0	 167.0	 167.0	 167.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7	 9	 0.0	 0.11001	 0.0	 267.0	 267.0	 267.0	 0.0	 0.0	 1	 -30.0	 30.0;
	9	 10	 0.03181	 0.0845	 0.0	 325.0	 325.0	 325.0	 0.0	 0.0	 1	 -30.0	 30.0;
	9	 14	 0.12711	 0.27038	 0.0	 99.0	 99.0	 99.0	 0.0	 0.0	 1	 -30.0	 30.0;
	10	 11	 0.08205	 0.19207	 0.0	 141.0	 141.0	 141.0	 0.0	 0.0	 1	 -30.0	 30.0;
	12	 13	 0.22092	 0.19988	 0.0	 99.0	 99.0	 99.0	 0.0	 0.0	 1	 -30.0	 30.0;
	13	 14	 0.17093	 0.34802	 0.0	 76.0	 76.0	 76.0	 0.0	 0.0	 1	 -30.0	 30.0;
];

% INFO    : === Translation Options ===
% INFO    : Load Model:                  from file ./pglib_opf_case14_ieee.m.api.sol
% INFO    : Gen Active Capacity Model:   stat
% INFO    : Gen Reactive Capacity Model: al50ag
% INFO    : Gen Active Cost Model:       stat
% INFO    : 
% INFO    : === Load Replacement Notes ===
% INFO    : Bus 1	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 2	: Pd=21.7, Qd=12.7 -> Pd=42.66, Qd=12.70
% INFO    : Bus 3	: Pd=94.2, Qd=19.0 -> Pd=185.17, Qd=19.00
% INFO    : Bus 4	: Pd=47.8, Qd=-3.9 -> Pd=47.80, Qd=-3.90
% INFO    : Bus 5	: Pd=7.6, Qd=1.6 -> Pd=14.94, Qd=1.60
% INFO    : Bus 6	: Pd=11.2, Qd=7.5 -> Pd=22.02, Qd=7.50
% INFO    : Bus 7	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 8	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 9	: Pd=29.5, Qd=16.6 -> Pd=57.99, Qd=16.60
% INFO    : Bus 10	: Pd=9.0, Qd=5.8 -> Pd=17.69, Qd=5.80
% INFO    : Bus 11	: Pd=3.5, Qd=1.8 -> Pd=6.88, Qd=1.80
% INFO    : Bus 12	: Pd=6.1, Qd=1.6 -> Pd=11.99, Qd=1.60
% INFO    : Bus 13	: Pd=13.5, Qd=5.8 -> Pd=26.54, Qd=5.80
% INFO    : Bus 14	: Pd=14.9, Qd=5.0 -> Pd=29.29, Qd=5.00
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=274.977, Qg=1.332 -> Pg=355.0, Qg=31.0
% INFO    : Gen at bus 2	: Pg=0.0, Qg=30.0 -> Pg=151.0, Qg=48.0
% INFO    : Gen at bus 3	: Pg=0.0, Qg=34.483 -> Pg=0.0, Qg=60.0
% INFO    : Gen at bus 6	: Pg=0.0, Qg=15.267 -> Pg=0.0, Qg=47.0
% INFO    : Gen at bus 8	: Pg=0.0, Qg=10.57 -> Pg=0.0, Qg=25.0
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Setpoint Value Notes ===
% INFO    : Gen at bus 1	: Qg 31.0, Qmin 0.0, Qmax 10.0 -> Qmin -37.2, Qmax 37.2
% INFO    : Gen at bus 2	: Qg 48.0, Qmin -30.0, Qmax 30.0 -> Qmin -57.6, Qmax 57.6
% INFO    : Gen at bus 3	: Qg 60.0, Qmin 0.0, Qmax 40.0 -> Qmin -72.0, Qmax 72.0
% INFO    : Gen at bus 6	: Qg 47.0, Qmin -6.0, Qmax 24.0 -> Qmin -56.4, Qmax 56.4
% INFO    : Gen at bus 8	: Qg 25.0, Qmin -6.0, Qmax 24.0 -> Qmin -30.0, Qmax 30.0
% INFO    : 
% INFO    : === Generator Classification Notes ===
% INFO    : SYNC   3   -     0.00
% INFO    : NG     2   -   100.00
% INFO    : 
% INFO    : === Generator Active Capacity Stat Model Notes ===
% INFO    : Gen at bus 1 - NG	: Pg=355.0, Pmax=340.0 -> Pmax=398   samples: 10
% INFO    : Gen at bus 2 - NG	: Pg=151.0, Pmax=59.0 -> Pmax=230   samples: 1
% INFO    : Gen at bus 3 - SYNC	: Pg=0.0, Pmax=0.0 -> Pmax=0   samples: 0
% INFO    : Gen at bus 6 - SYNC	: Pg=0.0, Pmax=0.0 -> Pmax=0   samples: 0
% INFO    : Gen at bus 8 - SYNC	: Pg=0.0, Pmax=0.0 -> Pmax=0   samples: 0
% INFO    : 
% INFO    : === Generator Active Capacity LB Model Notes ===
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Max 50 Percent Active Model Notes ===
% INFO    : Gen at bus 1 - NG	: Pmax 398.0, Qmin -37.2, Qmax 37.2 -> Qmin -199.0, Qmax 199.0
% INFO    : Gen at bus 2 - NG	: Pmax 230.0, Qmin -57.6, Qmax 57.6 -> Qmin -115.0, Qmax 115.0
% INFO    : 
% INFO    : === Generator Active Cost Stat Model Notes ===
% INFO    : Updated Generator Cost: NG - 0.0 0.579201 0.0 -> 0 1.32123387226 0
% INFO    : Updated Generator Cost: NG - 0.0 0.859587 0.0 -> 0 1.23665599848 0
% INFO    : Updated Generator Cost: SYNC - 0.0 0.0 0.0 -> 0 0.0 0
% INFO    : Updated Generator Cost: SYNC - 0.0 0.0 0.0 -> 0 0.0 0
% INFO    : Updated Generator Cost: SYNC - 0.0 0.0 0.0 -> 0 0.0 0
% INFO    : 
% INFO    : === Voltage Setpoint Replacement Notes ===
% INFO    : Bus 1	: V=1.06, theta=0.0 -> V=1.06, theta=0.0
% INFO    : Bus 2	: V=1.03247, theta=-6.00673 -> V=1.00298, theta=-6.31115
% INFO    : Bus 3	: V=1.00666, theta=-13.91534 -> V=0.94484, theta=-23.37371
% INFO    : Bus 4	: V=1.00706, theta=-11.2237 -> V=0.95768, theta=-17.19836
% INFO    : Bus 5	: V=1.00974, theta=-9.59832 -> V=0.96528, theta=-14.73278
% INFO    : Bus 6	: V=1.06, theta=-15.23484 -> V=1.06, theta=-26.36428
% INFO    : Bus 7	: V=1.04244, theta=-14.30976 -> V=1.01423, theta=-23.88987
% INFO    : Bus 8	: V=1.06, theta=-14.30976 -> V=1.06, theta=-23.88987
% INFO    : Bus 9	: V=1.03935, theta=-15.91758 -> V=1.00934, theta=-27.29923
% INFO    : Bus 10	: V=1.03545, theta=-16.08695 -> V=1.00754, theta=-27.82274
% INFO    : Bus 11	: V=1.04404, theta=-15.79104 -> V=1.02802, theta=-27.38438
% INFO    : Bus 12	: V=1.04456, theta=-16.10749 -> V=1.03375, theta=-28.21607
% INFO    : Bus 13	: V=1.03923, theta=-16.18058 -> V=1.02392, theta=-28.40279
% INFO    : Bus 14	: V=1.02106, theta=-17.05946 -> V=0.98548, theta=-30.12322
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=355.0, Qg=31.0 -> Pg=335.767, Qg=68.001
% INFO    : Gen at bus 1	: Vg=1.06 -> Vg=1.06
% INFO    : Gen at bus 2	: Pg=151.0, Qg=48.0 -> Pg=168.468, Qg=4.067
% INFO    : Gen at bus 2	: Vg=1.03247 -> Vg=1.00298
% INFO    : Gen at bus 3	: Pg=0.0, Qg=60.0 -> Pg=0.0, Qg=57.548
% INFO    : Gen at bus 3	: Vg=1.00666 -> Vg=0.94484
% INFO    : Gen at bus 6	: Pg=0.0, Qg=47.0 -> Pg=0.0, Qg=52.227
% INFO    : Gen at bus 6	: Vg=1.06 -> Vg=1.06
% INFO    : Gen at bus 8	: Pg=0.0, Qg=25.0 -> Pg=0.0, Qg=27.545
% INFO    : Gen at bus 8	: Vg=1.06 -> Vg=1.06
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
