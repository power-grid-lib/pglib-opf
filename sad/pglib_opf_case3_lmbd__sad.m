%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%    IEEE PES Power Grid Library - Optimal Power Flow - v17.07     %%%%%
%%%%          (https://github.com/power-grid-lib/pglib-opf)           %%%%%
%%%%             Benchmark Group - Small Angle Difference             %%%%%
%%%%                         27 - June - 2017                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = pglib_opf_case3_lmbd__sad
mpc.version = '2';
mpc.baseMVA = 100.0;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	 3	 110.0	 40.0	 0.0	 0.0	 1	    1.10000	   -0.00000	 240.0	 1	    1.10000	    0.90000;
	2	 2	 110.0	 40.0	 0.0	 0.0	 1	    0.99762	    1.05739	 240.0	 1	    1.10000	    0.90000;
	3	 2	 95.0	 50.0	 0.0	 0.0	 1	    0.97961	  -17.68193	 240.0	 1	    1.10000	    0.90000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	 163.62	 31.011	 1000.0	 -1000.0	 1.1	 100.0	 1	 2000.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	2	 153.843	 -13.272	 1000.0	 -1000.0	 0.99762	 100.0	 1	 2000.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	3	 0.0	 -4.454	 1000.0	 -1000.0	 0.97961	 100.0	 1	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 0.0	 0.0	 3	   0.110000	   5.000000	   0.000000;
	2	 0.0	 0.0	 3	   0.085000	   1.200000	   0.000000;
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	 3	 0.065	 0.62	 0.45	 9000.0	 0.0	 0.0	 0.0	 0.0	 1	 -18.739318	 18.739318;
	3	 2	 0.025	 0.75	 0.7	 50.0	 0.0	 0.0	 0.0	 0.0	 1	 -18.739318	 18.739318;
	1	 2	 0.042	 0.9	 0.3	 9000.0	 0.0	 0.0	 0.0	 0.0	 1	 -18.739318	 18.739318;
];

% INFO    : === Translation Options ===
% INFO    : Phase Angle Bound:           18.739318 (deg.)
% INFO    : AC OPF Solution File:        ./pglib_opf_case3_lmbd__sad.m.opf.sol
% INFO    : 
% INFO    : === Voltage Setpoint Replacement Notes ===
% INFO    : Bus 1	: V=1.1, theta=-0.0 -> V=1.1, theta=-0.0
% INFO    : Bus 2	: V=0.92617, theta=7.25883 -> V=0.99762, theta=1.05739
% INFO    : Bus 3	: V=0.9, theta=-17.2671 -> V=0.97961, theta=-17.68193
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=148.067, Qg=54.697 -> Pg=163.62, Qg=31.011
% INFO    : Gen at bus 1	: Vg=1.1 -> Vg=1.1
% INFO    : Gen at bus 2	: Pg=170.006, Qg=-8.791 -> Pg=153.843, Qg=-13.272
% INFO    : Gen at bus 2	: Vg=0.92617 -> Vg=0.99762
% INFO    : Gen at bus 3	: Pg=0.0, Qg=-4.843 -> Pg=0.0, Qg=-4.454
% INFO    : Gen at bus 3	: Vg=0.9 -> Vg=0.97961
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
