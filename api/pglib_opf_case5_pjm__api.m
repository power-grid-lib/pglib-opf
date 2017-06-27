%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%    IEEE PES Power Grid Library - Optimal Power Flow - v17.07     %%%%%
%%%%          (https://github.com/power-grid-lib/pglib-opf)           %%%%%
%%%%             Benchmark Group - Active Power Increase              %%%%%
%%%%                         27 - June - 2017                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = pglib_opf_case5_pjm__api
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
	1	 2	 0.00	 0.00	 0.0	 0.0	 1	    1.10000	    1.30032	 230.0	 1	    1.10000	    0.90000;
	2	 1	 806.16	 98.61	 0.0	 0.0	 1	    1.07137	   -3.90784	 230.0	 1	    1.10000	    0.90000;
	3	 2	 806.16	 98.61	 0.0	 0.0	 1	    1.08084	   -1.68568	 230.0	 1	    1.10000	    0.90000;
	4	 3	 1074.88	 131.47	 0.0	 0.0	 1	    1.04499	    0.00000	 230.0	 1	    1.10000	    0.90000;
	5	 2	 0.00	 0.00	 0.0	 0.0	 1	    1.09640	    1.79076	 230.0	 1	    1.10000	    0.90000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	 0.0	 177.6	 177.6	 -177.6	 1.1	 100.0	 1	 222	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % PEL
	1	 341.0	 177.6	 177.6	 -177.6	 1.1	 100.0	 1	 341	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	3	 1130.292	 299.722	 575.0	 -575.0	 1.08084	 100.0	 1	 1150	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
	4	 932.649	 -347.052	 586.0	 -586.0	 1.04499	 100.0	 1	 1172	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	5	 292.0	 99.178	 450.0	 -450.0	 1.0964	 100.0	 1	 292	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 0.0	 0.0	 3	   0.000000	   7.123982	   0.000000; % PEL
	2	 0.0	 0.0	 3	   0.000000	   0.979590	   0.000000; % NG
	2	 0.0	 0.0	 3	   0.000000	   0.493085	   0.000000; % COW
	2	 0.0	 0.0	 3	   0.000000	   0.971741	   0.000000; % NG
	2	 0.0	 0.0	 3	   0.000000	   0.888236	   0.000000; % COW
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	 2	 0.00281	 0.0281	 0.00712	 400.0	 400.0	 400.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1	 4	 0.00304	 0.0304	 0.00658	 426.0	 426.0	 426.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1	 5	 0.00064	 0.0064	 0.03126	 426.0	 426.0	 426.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2	 3	 0.00108	 0.0108	 0.01852	 426.0	 426.0	 426.0	 0.0	 0.0	 1	 -30.0	 30.0;
	3	 4	 0.00297	 0.0297	 0.00674	 426.0	 426.0	 426.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4	 5	 0.00297	 0.0297	 0.00674	 240.0	 240.0	 240.0	 0.0	 0.0	 1	 -30.0	 30.0;
];

% INFO    : === Translation Options ===
% INFO    : Load Model:                  from file ./pglib_opf_case5_pjm.m.api.sol
% INFO    : Gen Active Capacity Model:   stat
% INFO    : Gen Reactive Capacity Model: al50ag
% INFO    : Gen Active Cost Model:       stat
% INFO    : 
% INFO    : === Load Replacement Notes ===
% INFO    : Bus 1	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 2	: Pd=300.0, Qd=98.61 -> Pd=806.16, Qd=98.61
% INFO    : Bus 3	: Pd=300.0, Qd=98.61 -> Pd=806.16, Qd=98.61
% INFO    : Bus 4	: Pd=400.0, Qd=131.47 -> Pd=1074.88, Qd=131.47
% INFO    : Bus 5	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=40.0, Qg=30.0 -> Pg=222.0, Qg=148.0
% INFO    : Gen at bus 1	: Pg=170.0, Qg=127.5 -> Pg=222.0, Qg=148.0
% INFO    : Gen at bus 3	: Pg=324.498, Qg=390.0 -> Pg=1093.0, Qg=226.0
% INFO    : Gen at bus 4	: Pg=0.0, Qg=-10.802 -> Pg=1038.0, Qg=-21.0
% INFO    : Gen at bus 5	: Pg=470.694, Qg=-165.039 -> Pg=122.0, Qg=-114.0
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Setpoint Value Notes ===
% INFO    : Gen at bus 1	: Qg 148.0, Qmin -30.0, Qmax 30.0 -> Qmin -177.6, Qmax 177.6
% INFO    : Gen at bus 1	: Qg 148.0, Qmin -127.5, Qmax 127.5 -> Qmin -177.6, Qmax 177.6
% INFO    : 
% INFO    : === Generator Classification Notes ===
% INFO    : PEL    1   -     8.23
% INFO    : COW    2   -    45.05
% INFO    : NG     2   -    46.72
% INFO    : 
% INFO    : === Generator Active Capacity Stat Model Notes ===
% INFO    : Gen at bus 1 - PEL	: Pg=222.0, Pmax=40.0 -> Pmax=222   samples: 58
% INFO    : Gen at bus 1 - NG	: Pg=222.0, Pmax=170.0 -> Pmax=341   samples: 10
% INFO    : Gen at bus 3 - COW	: Pg=1093.0, Pmax=520.0 -> Pmax=1150   samples: 58
% WARNING : Failed to find a generator capacity within (1038.0-5190.0) after 100 samples, using percent increase model
% INFO    : Gen at bus 4 - NG	: Pg=1038.0, Pmax=200.0 -> Pmax=1172   samples: 100
% INFO    : Gen at bus 5 - COW	: Pg=122.0, Pmax=600.0 -> Pmax=292   samples: 2
% INFO    : 
% INFO    : === Generator Active Capacity LB Model Notes ===
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Max 50 Percent Active Model Notes ===
% INFO    : Gen at bus 3 - COW	: Pmax 1150.0, Qmin -390.0, Qmax 390.0 -> Qmin -575.0, Qmax 575.0
% INFO    : Gen at bus 4 - NG	: Pmax 1172.0, Qmin -150.0, Qmax 150.0 -> Qmin -586.0, Qmax 586.0
% INFO    : 
% INFO    : === Generator Active Cost Stat Model Notes ===
% INFO    : Updated Generator Cost: PEL - 0.0 14.0 0.0 -> 0 7.12398216449 0
% INFO    : Updated Generator Cost: NG - 0.0 15.0 0.0 -> 0 0.979590299299 0
% INFO    : Updated Generator Cost: COW - 0.0 30.0 0.0 -> 0 0.493085288589 0
% INFO    : Updated Generator Cost: NG - 0.0 40.0 0.0 -> 0 0.971740747002 0
% INFO    : Updated Generator Cost: COW - 0.0 10.0 0.0 -> 0 0.888235774313 0
% INFO    : 
% INFO    : === Voltage Setpoint Replacement Notes ===
% INFO    : Bus 1	: V=1.07762, theta=2.80378 -> V=1.1, theta=1.30032
% INFO    : Bus 2	: V=1.08406, theta=-0.73464 -> V=1.07137, theta=-3.90784
% INFO    : Bus 3	: V=1.1, theta=-0.55973 -> V=1.08084, theta=-1.68568
% INFO    : Bus 4	: V=1.06414, theta=0.0 -> V=1.04499, theta=0.0
% INFO    : Bus 5	: V=1.06907, theta=3.59035 -> V=1.0964, theta=1.79076
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=222.0, Qg=148.0 -> Pg=0.0, Qg=177.6
% INFO    : Gen at bus 1	: Vg=1.07762 -> Vg=1.1
% INFO    : Gen at bus 1	: Pg=222.0, Qg=148.0 -> Pg=341.0, Qg=177.6
% INFO    : Gen at bus 1	: Vg=1.07762 -> Vg=1.1
% INFO    : Gen at bus 3	: Pg=1093.0, Qg=226.0 -> Pg=1130.292, Qg=299.722
% INFO    : Gen at bus 3	: Vg=1.1 -> Vg=1.08084
% INFO    : Gen at bus 4	: Pg=1038.0, Qg=-21.0 -> Pg=932.649, Qg=-347.052
% INFO    : Gen at bus 4	: Vg=1.06414 -> Vg=1.04499
% INFO    : Gen at bus 5	: Pg=122.0, Qg=-114.0 -> Pg=292.0, Qg=99.178
% INFO    : Gen at bus 5	: Vg=1.06907 -> Vg=1.0964
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
