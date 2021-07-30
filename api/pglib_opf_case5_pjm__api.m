%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%    IEEE PES Power Grid Library - Optimal Power Flow - v21.07     %%%%%
%%%%          (https://github.com/power-grid-lib/pglib-opf)           %%%%%
%%%%             Benchmark Group - Active Power Increase              %%%%%
%%%%                         29 - July - 2021                         %%%%%
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
	1	 2	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 230.0	 1	    1.10000	    0.90000;
	2	 1	 806.16	 98.61	 0.0	 0.0	 1	    1.00000	    0.00000	 230.0	 1	    1.10000	    0.90000;
	3	 2	 806.16	 98.61	 0.0	 0.0	 1	    1.00000	    0.00000	 230.0	 1	    1.10000	    0.90000;
	4	 3	 1074.88	 131.47	 0.0	 0.0	 1	    1.00000	    0.00000	 230.0	 1	    1.10000	    0.90000;
	5	 2	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 230.0	 1	    1.10000	    0.90000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin
mpc.gen = [
	1	 111.0	 0.0	 177.6	 -177.6	 1.0	 100.0	 1	 222	 0.0; % PEL
	1	 170.5	 0.0	 177.6	 -177.6	 1.0	 100.0	 1	 341	 0.0; % NG
	3	 575.0	 0.0	 575.0	 -575.0	 1.0	 100.0	 1	 1150	 0.0; % COW
	4	 586.0	 0.0	 586.0	 -586.0	 1.0	 100.0	 1	 1172	 0.0; % NG
	5	 146.0	 0.0	 450.0	 -450.0	 1.0	 100.0	 1	 292	 0.0; % COW
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 0.0	 0.0	 3	   0.000000	  14.000000	   0.000000; % PEL
	2	 0.0	 0.0	 3	   0.000000	  15.000000	   0.000000; % NG
	2	 0.0	 0.0	 3	   0.000000	  30.000000	   0.000000; % COW
	2	 0.0	 0.0	 3	   0.000000	  40.000000	   0.000000; % NG
	2	 0.0	 0.0	 3	   0.000000	  10.000000	   0.000000; % COW
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
% INFO    : Bus 2	: Pd=300.0, Qd=98.61 -> Pd=806.16, Qd=98.61
% INFO    : Bus 3	: Pd=300.0, Qd=98.61 -> Pd=806.16, Qd=98.61
% INFO    : Bus 4	: Pd=400.0, Qd=131.47 -> Pd=1074.88, Qd=131.47
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=20.0, Qg=0.0 -> Pg=222.0, Qg=148.0
% INFO    : Gen at bus 1	: Pg=85.0, Qg=0.0 -> Pg=222.0, Qg=148.0
% INFO    : Gen at bus 3	: Pg=260.0, Qg=0.0 -> Pg=1093.0, Qg=226.0
% INFO    : Gen at bus 4	: Pg=100.0, Qg=0.0 -> Pg=1038.0, Qg=-21.0
% INFO    : Gen at bus 5	: Pg=300.0, Qg=0.0 -> Pg=122.0, Qg=-114.0
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
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=222.0, Qg=148.0 -> Pg=111.0, Qg=0.0
% INFO    : Gen at bus 1	: Vg=1.0 -> Vg=1.0
% INFO    : Gen at bus 1	: Pg=222.0, Qg=148.0 -> Pg=170.5, Qg=0.0
% INFO    : Gen at bus 1	: Vg=1.0 -> Vg=1.0
% INFO    : Gen at bus 3	: Pg=1093.0, Qg=226.0 -> Pg=575.0, Qg=0.0
% INFO    : Gen at bus 3	: Vg=1.0 -> Vg=1.0
% INFO    : Gen at bus 4	: Pg=1038.0, Qg=-21.0 -> Pg=586.0, Qg=0.0
% INFO    : Gen at bus 4	: Vg=1.0 -> Vg=1.0
% INFO    : Gen at bus 5	: Pg=122.0, Qg=-114.0 -> Pg=146.0, Qg=0.0
% INFO    : Gen at bus 5	: Vg=1.0 -> Vg=1.0
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
