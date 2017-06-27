%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%    IEEE PES Power Grid Library - Optimal Power Flow - v17.07     %%%%%
%%%%          (https://github.com/power-grid-lib/pglib-opf)           %%%%%
%%%%             Benchmark Group - Small Angle Difference             %%%%%
%%%%                         27 - June - 2017                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = pglib_opf_case5_pjm__sad
mpc.version = '2';
mpc.baseMVA = 100.0;

%% area data
%	area	refbus
mpc.areas = [
	1	 4;
];

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	 2	 0.0	 0.0	 0.0	 0.0	 1	    1.08462	    0.90747	 230.0	 1	    1.10000	    0.90000;
	2	 1	 300.0	 98.61	 0.0	 0.0	 1	    1.01448	   -0.42313	 230.0	 1	    1.10000	    0.90000;
	3	 2	 300.0	 98.61	 0.0	 0.0	 1	    1.00141	    0.79117	 230.0	 1	    1.10000	    0.90000;
	4	 3	 400.0	 131.47	 0.0	 0.0	 1	    1.04233	    0.00000	 230.0	 1	    1.10000	    0.90000;
	5	 2	 0.0	 0.0	 0.0	 0.0	 1	    1.10000	    1.33060	 230.0	 1	    1.10000	    0.90000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	 28.17	 30.0	 30.0	 -30.0	 1.08462	 100.0	 1	 40.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	1	 0.0	 127.5	 127.5	 -127.5	 1.08462	 100.0	 1	 170.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	3	 520.0	 -181.366	 390.0	 -390.0	 1.00141	 100.0	 1	 520.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	4	 184.884	 -50.076	 150.0	 -150.0	 1.04233	 100.0	 1	 200.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	5	 272.545	 450.0	 450.0	 -450.0	 1.1	 100.0	 1	 600.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 0.0	 0.0	 3	   0.000000	  14.000000	   0.000000;
	2	 0.0	 0.0	 3	   0.000000	  15.000000	   0.000000;
	2	 0.0	 0.0	 3	   0.000000	  30.000000	   0.000000;
	2	 0.0	 0.0	 3	   0.000000	  40.000000	   0.000000;
	2	 0.0	 0.0	 3	   0.000000	  10.000000	   0.000000;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	 2	 0.00281	 0.0281	 0.00712	 400.0	 400.0	 400.0	 0.0	 0.0	 1	 -1.330599	 1.330599;
	1	 4	 0.00304	 0.0304	 0.00658	 426.0	 426.0	 426.0	 0.0	 0.0	 1	 -1.330599	 1.330599;
	1	 5	 0.00064	 0.0064	 0.03126	 426.0	 426.0	 426.0	 0.0	 0.0	 1	 -1.330599	 1.330599;
	2	 3	 0.00108	 0.0108	 0.01852	 426.0	 426.0	 426.0	 0.0	 0.0	 1	 -1.330599	 1.330599;
	3	 4	 0.00297	 0.0297	 0.00674	 426.0	 426.0	 426.0	 0.0	 0.0	 1	 -1.330599	 1.330599;
	4	 5	 0.00297	 0.0297	 0.00674	 240.0	 240.0	 240.0	 0.0	 0.0	 1	 -1.330599	 1.330599;
];

% INFO    : === Translation Options ===
% INFO    : Phase Angle Bound:           1.330599 (deg.)
% INFO    : AC OPF Solution File:        ./pglib_opf_case5_pjm__sad.m.opf.sol
% INFO    : 
% INFO    : === Voltage Setpoint Replacement Notes ===
% INFO    : Bus 1	: V=1.07762, theta=2.80378 -> V=1.08462, theta=0.90747
% INFO    : Bus 2	: V=1.08406, theta=-0.73464 -> V=1.01448, theta=-0.42313
% INFO    : Bus 3	: V=1.1, theta=-0.55973 -> V=1.00141, theta=0.79117
% INFO    : Bus 4	: V=1.06414, theta=0.0 -> V=1.04233, theta=0.0
% INFO    : Bus 5	: V=1.06907, theta=3.59035 -> V=1.1, theta=1.3306
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=40.0, Qg=30.0 -> Pg=28.17, Qg=30.0
% INFO    : Gen at bus 1	: Vg=1.07762 -> Vg=1.08462
% INFO    : Gen at bus 1	: Pg=170.0, Qg=127.5 -> Pg=0.0, Qg=127.5
% INFO    : Gen at bus 1	: Vg=1.07762 -> Vg=1.08462
% INFO    : Gen at bus 3	: Pg=324.498, Qg=390.0 -> Pg=520.0, Qg=-181.366
% INFO    : Gen at bus 3	: Vg=1.1 -> Vg=1.00141
% INFO    : Gen at bus 4	: Pg=0.0, Qg=-10.802 -> Pg=184.884, Qg=-50.076
% INFO    : Gen at bus 4	: Vg=1.06414 -> Vg=1.04233
% INFO    : Gen at bus 5	: Pg=470.694, Qg=-165.039 -> Pg=272.545, Qg=450.0
% INFO    : Gen at bus 5	: Vg=1.06907 -> Vg=1.1
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
