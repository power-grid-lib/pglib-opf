%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%    IEEE PES Power Grid Library - Optimal Power Flow - v17.07     %%%%%
%%%%          (https://github.com/power-grid-lib/pglib-opf)           %%%%%
%%%%             Benchmark Group - Small Angle Difference             %%%%%
%%%%                         24 - July - 2017                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = pglib_opf_case73_ieee_rts__sad
mpc.version = '2';
mpc.baseMVA = 100.0;

%% area data
%	area	refbus
mpc.areas = [
	1	 101;
	2	 201;
	3	 301;
];

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	101	 2	 108.0	 22.0	 0.0	 0.0	 1	    1.00000	    0.00000	 138.0	 1	    1.05000	    0.95000;
	102	 2	 97.0	 20.0	 0.0	 0.0	 1	    1.00000	    0.00000	 138.0	 1	    1.05000	    0.95000;
	103	 1	 180.0	 37.0	 0.0	 0.0	 1	    1.00000	    0.00000	 138.0	 1	    1.05000	    0.95000;
	104	 1	 74.0	 15.0	 0.0	 0.0	 1	    1.00000	    0.00000	 138.0	 1	    1.05000	    0.95000;
	105	 1	 71.0	 14.0	 0.0	 0.0	 1	    1.00000	    0.00000	 138.0	 1	    1.05000	    0.95000;
	106	 1	 136.0	 28.0	 0.0	 -100.0	 1	    1.00000	    0.00000	 138.0	 1	    1.05000	    0.95000;
	107	 2	 125.0	 25.0	 0.0	 0.0	 1	    1.00000	    0.00000	 138.0	 1	    1.05000	    0.95000;
	108	 1	 171.0	 35.0	 0.0	 0.0	 1	    1.00000	    0.00000	 138.0	 1	    1.05000	    0.95000;
	109	 1	 175.0	 36.0	 0.0	 0.0	 1	    1.00000	    0.00000	 138.0	 1	    1.05000	    0.95000;
	110	 1	 195.0	 40.0	 0.0	 0.0	 1	    1.00000	    0.00000	 138.0	 1	    1.05000	    0.95000;
	111	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	112	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	113	 3	 265.0	 54.0	 0.0	 0.0	 1	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	114	 2	 194.0	 39.0	 0.0	 0.0	 1	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	115	 2	 317.0	 64.0	 0.0	 0.0	 1	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	116	 2	 100.0	 20.0	 0.0	 0.0	 1	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	117	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	118	 2	 333.0	 68.0	 0.0	 0.0	 1	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	119	 1	 181.0	 37.0	 0.0	 0.0	 1	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	120	 1	 128.0	 26.0	 0.0	 0.0	 1	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	121	 2	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	122	 2	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	123	 2	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	124	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	201	 2	 108.0	 22.0	 0.0	 0.0	 2	    1.00000	    0.00000	 138.0	 2	    1.05000	    0.95000;
	202	 2	 97.0	 20.0	 0.0	 0.0	 2	    1.00000	    0.00000	 138.0	 2	    1.05000	    0.95000;
	203	 1	 180.0	 37.0	 0.0	 0.0	 2	    1.00000	    0.00000	 138.0	 2	    1.05000	    0.95000;
	204	 1	 74.0	 15.0	 0.0	 0.0	 2	    1.00000	    0.00000	 138.0	 2	    1.05000	    0.95000;
	205	 1	 71.0	 14.0	 0.0	 0.0	 2	    1.00000	    0.00000	 138.0	 2	    1.05000	    0.95000;
	206	 1	 136.0	 28.0	 0.0	 -100.0	 2	    1.00000	    0.00000	 138.0	 2	    1.05000	    0.95000;
	207	 2	 125.0	 25.0	 0.0	 0.0	 2	    1.00000	    0.00000	 138.0	 2	    1.05000	    0.95000;
	208	 1	 171.0	 35.0	 0.0	 0.0	 2	    1.00000	    0.00000	 138.0	 2	    1.05000	    0.95000;
	209	 1	 175.0	 36.0	 0.0	 0.0	 2	    1.00000	    0.00000	 138.0	 2	    1.05000	    0.95000;
	210	 1	 195.0	 40.0	 0.0	 0.0	 2	    1.00000	    0.00000	 138.0	 2	    1.05000	    0.95000;
	211	 1	 0.0	 0.0	 0.0	 0.0	 2	    1.00000	    0.00000	 230.0	 2	    1.05000	    0.95000;
	212	 1	 0.0	 0.0	 0.0	 0.0	 2	    1.00000	    0.00000	 230.0	 2	    1.05000	    0.95000;
	213	 2	 265.0	 54.0	 0.0	 0.0	 2	    1.00000	    0.00000	 230.0	 2	    1.05000	    0.95000;
	214	 2	 194.0	 39.0	 0.0	 0.0	 2	    1.00000	    0.00000	 230.0	 2	    1.05000	    0.95000;
	215	 2	 317.0	 64.0	 0.0	 0.0	 2	    1.00000	    0.00000	 230.0	 2	    1.05000	    0.95000;
	216	 2	 100.0	 20.0	 0.0	 0.0	 2	    1.00000	    0.00000	 230.0	 2	    1.05000	    0.95000;
	217	 1	 0.0	 0.0	 0.0	 0.0	 2	    1.00000	    0.00000	 230.0	 2	    1.05000	    0.95000;
	218	 2	 333.0	 68.0	 0.0	 0.0	 2	    1.00000	    0.00000	 230.0	 2	    1.05000	    0.95000;
	219	 1	 181.0	 37.0	 0.0	 0.0	 2	    1.00000	    0.00000	 230.0	 2	    1.05000	    0.95000;
	220	 1	 128.0	 26.0	 0.0	 0.0	 2	    1.00000	    0.00000	 230.0	 2	    1.05000	    0.95000;
	221	 2	 0.0	 0.0	 0.0	 0.0	 2	    1.00000	    0.00000	 230.0	 2	    1.05000	    0.95000;
	222	 2	 0.0	 0.0	 0.0	 0.0	 2	    1.00000	    0.00000	 230.0	 2	    1.05000	    0.95000;
	223	 2	 0.0	 0.0	 0.0	 0.0	 2	    1.00000	    0.00000	 230.0	 2	    1.05000	    0.95000;
	224	 1	 0.0	 0.0	 0.0	 0.0	 2	    1.00000	    0.00000	 230.0	 2	    1.05000	    0.95000;
	301	 2	 108.0	 22.0	 0.0	 0.0	 3	    1.00000	    0.00000	 138.0	 3	    1.05000	    0.95000;
	302	 2	 97.0	 20.0	 0.0	 0.0	 3	    1.00000	    0.00000	 138.0	 3	    1.05000	    0.95000;
	303	 1	 180.0	 37.0	 0.0	 0.0	 3	    1.00000	    0.00000	 138.0	 3	    1.05000	    0.95000;
	304	 1	 74.0	 15.0	 0.0	 0.0	 3	    1.00000	    0.00000	 138.0	 3	    1.05000	    0.95000;
	305	 1	 71.0	 14.0	 0.0	 0.0	 3	    1.00000	    0.00000	 138.0	 3	    1.05000	    0.95000;
	306	 1	 136.0	 28.0	 0.0	 -100.0	 3	    1.00000	    0.00000	 138.0	 3	    1.05000	    0.95000;
	307	 2	 125.0	 25.0	 0.0	 0.0	 3	    1.00000	    0.00000	 138.0	 3	    1.05000	    0.95000;
	308	 1	 171.0	 35.0	 0.0	 0.0	 3	    1.00000	    0.00000	 138.0	 3	    1.05000	    0.95000;
	309	 1	 175.0	 36.0	 0.0	 0.0	 3	    1.00000	    0.00000	 138.0	 3	    1.05000	    0.95000;
	310	 1	 195.0	 40.0	 0.0	 0.0	 3	    1.00000	    0.00000	 138.0	 3	    1.05000	    0.95000;
	311	 1	 0.0	 0.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 3	    1.05000	    0.95000;
	312	 1	 0.0	 0.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 3	    1.05000	    0.95000;
	313	 2	 265.0	 54.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 3	    1.05000	    0.95000;
	314	 2	 194.0	 39.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 3	    1.05000	    0.95000;
	315	 2	 317.0	 64.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 3	    1.05000	    0.95000;
	316	 2	 100.0	 20.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 3	    1.05000	    0.95000;
	317	 1	 0.0	 0.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 3	    1.05000	    0.95000;
	318	 2	 333.0	 68.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 3	    1.05000	    0.95000;
	319	 1	 181.0	 37.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 3	    1.05000	    0.95000;
	320	 1	 128.0	 26.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 3	    1.05000	    0.95000;
	321	 2	 0.0	 0.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 3	    1.05000	    0.95000;
	322	 2	 0.0	 0.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 3	    1.05000	    0.95000;
	323	 2	 0.0	 0.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 3	    1.05000	    0.95000;
	324	 1	 0.0	 0.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 3	    1.05000	    0.95000;
	325	 1	 0.0	 0.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 3	    1.05000	    0.95000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	101	 18.0	 5.0	 10.0	 0.0	 1.035	 100.0	 1	 20.0	 16.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	101	 18.0	 5.0	 10.0	 0.0	 1.035	 100.0	 1	 20.0	 16.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	101	 45.6	 2.5	 30.0	 -25.0	 1.035	 100.0	 1	 76.0	 15.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	101	 45.6	 2.5	 30.0	 -25.0	 1.035	 100.0	 1	 76.0	 15.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	102	 18.0	 5.0	 10.0	 0.0	 1.035	 100.0	 1	 20.0	 16.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	102	 18.0	 5.0	 10.0	 0.0	 1.035	 100.0	 1	 20.0	 16.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	102	 45.6	 2.5	 30.0	 -25.0	 1.035	 100.0	 1	 76.0	 15.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	102	 45.6	 2.5	 30.0	 -25.0	 1.035	 100.0	 1	 76.0	 15.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	107	 62.5	 30.0	 60.0	 0.0	 1.025	 100.0	 1	 100.0	 25.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	107	 62.5	 30.0	 60.0	 0.0	 1.025	 100.0	 1	 100.0	 25.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	107	 62.5	 30.0	 60.0	 0.0	 1.025	 100.0	 1	 100.0	 25.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	113	 133.0	 40.0	 80.0	 0.0	 1.02	 100.0	 1	 197.0	 69.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	113	 133.0	 40.0	 80.0	 0.0	 1.02	 100.0	 1	 197.0	 69.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	113	 133.0	 40.0	 80.0	 0.0	 1.02	 100.0	 1	 197.0	 69.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	114	 0.0	 75.0	 200.0	 -50.0	 0.98	 100.0	 1	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	115	 7.2	 3.0	 6.0	 0.0	 1.014	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	115	 7.2	 3.0	 6.0	 0.0	 1.014	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	115	 7.2	 3.0	 6.0	 0.0	 1.014	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	115	 7.2	 3.0	 6.0	 0.0	 1.014	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	115	 7.2	 3.0	 6.0	 0.0	 1.014	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	115	 104.65	 15.0	 80.0	 -50.0	 1.014	 100.0	 1	 155.0	 54.3	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	116	 104.65	 15.0	 80.0	 -50.0	 1.017	 100.0	 1	 155.0	 54.3	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	118	 250.0	 75.0	 200.0	 -50.0	 1.05	 100.0	 1	 400.0	 100.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	121	 250.0	 75.0	 200.0	 -50.0	 1.05	 100.0	 1	 400.0	 100.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	122	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	122	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	122	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	122	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	122	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	122	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	123	 104.65	 15.0	 80.0	 -50.0	 1.05	 100.0	 1	 155.0	 54.3	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	123	 104.65	 15.0	 80.0	 -50.0	 1.05	 100.0	 1	 155.0	 54.3	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	123	 245.0	 62.5	 150.0	 -25.0	 1.05	 100.0	 1	 350.0	 140.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	201	 18.0	 5.0	 10.0	 0.0	 1.035	 100.0	 1	 20.0	 16.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	201	 18.0	 5.0	 10.0	 0.0	 1.035	 100.0	 1	 20.0	 16.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	201	 45.6	 2.5	 30.0	 -25.0	 1.035	 100.0	 1	 76.0	 15.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	201	 45.6	 2.5	 30.0	 -25.0	 1.035	 100.0	 1	 76.0	 15.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	202	 18.0	 5.0	 10.0	 0.0	 1.035	 100.0	 1	 20.0	 16.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	202	 18.0	 5.0	 10.0	 0.0	 1.035	 100.0	 1	 20.0	 16.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	202	 45.6	 2.5	 30.0	 -25.0	 1.035	 100.0	 1	 76.0	 15.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	202	 45.6	 2.5	 30.0	 -25.0	 1.035	 100.0	 1	 76.0	 15.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	207	 62.5	 30.0	 60.0	 0.0	 1.025	 100.0	 1	 100.0	 25.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	207	 62.5	 30.0	 60.0	 0.0	 1.025	 100.0	 1	 100.0	 25.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	207	 62.5	 30.0	 60.0	 0.0	 1.025	 100.0	 1	 100.0	 25.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	213	 133.0	 40.0	 80.0	 0.0	 1.02	 100.0	 1	 197.0	 69.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	213	 133.0	 40.0	 80.0	 0.0	 1.02	 100.0	 1	 197.0	 69.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	213	 133.0	 40.0	 80.0	 0.0	 1.02	 100.0	 1	 197.0	 69.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	214	 0.0	 75.0	 200.0	 -50.0	 0.98	 100.0	 1	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	215	 7.2	 3.0	 6.0	 0.0	 1.014	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	215	 7.2	 3.0	 6.0	 0.0	 1.014	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	215	 7.2	 3.0	 6.0	 0.0	 1.014	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	215	 7.2	 3.0	 6.0	 0.0	 1.014	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	215	 7.2	 3.0	 6.0	 0.0	 1.014	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	215	 104.65	 15.0	 80.0	 -50.0	 1.014	 100.0	 1	 155.0	 54.3	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	216	 104.65	 15.0	 80.0	 -50.0	 1.017	 100.0	 1	 155.0	 54.3	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	218	 250.0	 75.0	 200.0	 -50.0	 1.05	 100.0	 1	 400.0	 100.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	221	 250.0	 75.0	 200.0	 -50.0	 1.05	 100.0	 1	 400.0	 100.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	222	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	222	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	222	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	222	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	222	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	222	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	223	 104.65	 15.0	 80.0	 -50.0	 1.05	 100.0	 1	 155.0	 54.3	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	223	 104.65	 15.0	 80.0	 -50.0	 1.05	 100.0	 1	 155.0	 54.3	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	223	 245.0	 62.5	 150.0	 -25.0	 1.05	 100.0	 1	 350.0	 140.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	301	 18.0	 5.0	 10.0	 0.0	 1.035	 100.0	 1	 20.0	 16.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	301	 18.0	 5.0	 10.0	 0.0	 1.035	 100.0	 1	 20.0	 16.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	301	 45.6	 2.5	 30.0	 -25.0	 1.035	 100.0	 1	 76.0	 15.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	301	 45.6	 2.5	 30.0	 -25.0	 1.035	 100.0	 1	 76.0	 15.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	302	 18.0	 5.0	 10.0	 0.0	 1.035	 100.0	 1	 20.0	 16.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	302	 18.0	 5.0	 10.0	 0.0	 1.035	 100.0	 1	 20.0	 16.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	302	 45.6	 2.5	 30.0	 -25.0	 1.035	 100.0	 1	 76.0	 15.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	302	 45.6	 2.5	 30.0	 -25.0	 1.035	 100.0	 1	 76.0	 15.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	307	 62.5	 30.0	 60.0	 0.0	 1.025	 100.0	 1	 100.0	 25.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	307	 62.5	 30.0	 60.0	 0.0	 1.025	 100.0	 1	 100.0	 25.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	307	 62.5	 30.0	 60.0	 0.0	 1.025	 100.0	 1	 100.0	 25.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	313	 133.0	 40.0	 80.0	 0.0	 1.02	 100.0	 1	 197.0	 69.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	313	 133.0	 40.0	 80.0	 0.0	 1.02	 100.0	 1	 197.0	 69.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	313	 133.0	 40.0	 80.0	 0.0	 1.02	 100.0	 1	 197.0	 69.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	314	 0.0	 75.0	 200.0	 -50.0	 0.98	 100.0	 1	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	315	 7.2	 3.0	 6.0	 0.0	 1.014	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	315	 7.2	 3.0	 6.0	 0.0	 1.014	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	315	 7.2	 3.0	 6.0	 0.0	 1.014	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	315	 7.2	 3.0	 6.0	 0.0	 1.014	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	315	 7.2	 3.0	 6.0	 0.0	 1.014	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	315	 104.65	 15.0	 80.0	 -50.0	 1.014	 100.0	 1	 155.0	 54.3	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	316	 104.65	 15.0	 80.0	 -50.0	 1.017	 100.0	 1	 155.0	 54.3	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	318	 250.0	 75.0	 200.0	 -50.0	 1.05	 100.0	 1	 400.0	 100.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	321	 250.0	 75.0	 200.0	 -50.0	 1.05	 100.0	 1	 400.0	 100.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	322	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	322	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	322	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	322	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	322	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	322	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	323	 104.65	 15.0	 80.0	 -50.0	 1.05	 100.0	 1	 155.0	 54.3	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	323	 104.65	 15.0	 80.0	 -50.0	 1.05	 100.0	 1	 155.0	 54.3	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	323	 245.0	 62.5	 150.0	 -25.0	 1.05	 100.0	 1	 350.0	 140.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 1500.0	 0.0	 3	   0.000000	 130.000000	 400.684900;
	2	 1500.0	 0.0	 3	   0.000000	 130.000000	 400.684900;
	2	 1500.0	 0.0	 3	   0.014142	  16.081100	 212.307600;
	2	 1500.0	 0.0	 3	   0.014142	  16.081100	 212.307600;
	2	 1500.0	 0.0	 3	   0.000000	 130.000000	 400.684900;
	2	 1500.0	 0.0	 3	   0.000000	 130.000000	 400.684900;
	2	 1500.0	 0.0	 3	   0.014142	  16.081100	 212.307600;
	2	 1500.0	 0.0	 3	   0.014142	  16.081100	 212.307600;
	2	 1500.0	 0.0	 3	   0.052672	  43.661500	 781.521000;
	2	 1500.0	 0.0	 3	   0.052672	  43.661500	 781.521000;
	2	 1500.0	 0.0	 3	   0.052672	  43.661500	 781.521000;
	2	 1500.0	 0.0	 3	   0.007170	  48.580400	 832.757500;
	2	 1500.0	 0.0	 3	   0.007170	  48.580400	 832.757500;
	2	 1500.0	 0.0	 3	   0.007170	  48.580400	 832.757500;
	2	 1500.0	 0.0	 3	   0.000000	   0.000000	   0.000000;
	2	 1500.0	 0.0	 3	   0.328412	  56.564000	  86.385200;
	2	 1500.0	 0.0	 3	   0.328412	  56.564000	  86.385200;
	2	 1500.0	 0.0	 3	   0.328412	  56.564000	  86.385200;
	2	 1500.0	 0.0	 3	   0.328412	  56.564000	  86.385200;
	2	 1500.0	 0.0	 3	   0.328412	  56.564000	  86.385200;
	2	 1500.0	 0.0	 3	   0.008342	  12.388300	 382.239100;
	2	 1500.0	 0.0	 3	   0.008342	  12.388300	 382.239100;
	2	 1500.0	 0.0	 3	   0.000213	   4.423100	 395.374900;
	2	 1500.0	 0.0	 3	   0.000213	   4.423100	 395.374900;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.008342	  12.388300	 382.239100;
	2	 1500.0	 0.0	 3	   0.008342	  12.388300	 382.239100;
	2	 1500.0	 0.0	 3	   0.004895	  11.849500	 665.109400;
	2	 1500.0	 0.0	 3	   0.000000	 130.000000	 400.684900;
	2	 1500.0	 0.0	 3	   0.000000	 130.000000	 400.684900;
	2	 1500.0	 0.0	 3	   0.014142	  16.081100	 212.307600;
	2	 1500.0	 0.0	 3	   0.014142	  16.081100	 212.307600;
	2	 1500.0	 0.0	 3	   0.000000	 130.000000	 400.684900;
	2	 1500.0	 0.0	 3	   0.000000	 130.000000	 400.684900;
	2	 1500.0	 0.0	 3	   0.014142	  16.081100	 212.307600;
	2	 1500.0	 0.0	 3	   0.014142	  16.081100	 212.307600;
	2	 1500.0	 0.0	 3	   0.052672	  43.661500	 781.521000;
	2	 1500.0	 0.0	 3	   0.052672	  43.661500	 781.521000;
	2	 1500.0	 0.0	 3	   0.052672	  43.661500	 781.521000;
	2	 1500.0	 0.0	 3	   0.007170	  48.580400	 832.757500;
	2	 1500.0	 0.0	 3	   0.007170	  48.580400	 832.757500;
	2	 1500.0	 0.0	 3	   0.007170	  48.580400	 832.757500;
	2	 1500.0	 0.0	 3	   0.000000	   0.000000	   0.000000;
	2	 1500.0	 0.0	 3	   0.328412	  56.564000	  86.385200;
	2	 1500.0	 0.0	 3	   0.328412	  56.564000	  86.385200;
	2	 1500.0	 0.0	 3	   0.328412	  56.564000	  86.385200;
	2	 1500.0	 0.0	 3	   0.328412	  56.564000	  86.385200;
	2	 1500.0	 0.0	 3	   0.328412	  56.564000	  86.385200;
	2	 1500.0	 0.0	 3	   0.008342	  12.388300	 382.239100;
	2	 1500.0	 0.0	 3	   0.008342	  12.388300	 382.239100;
	2	 1500.0	 0.0	 3	   0.000213	   4.423100	 395.374900;
	2	 1500.0	 0.0	 3	   0.000213	   4.423100	 395.374900;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.008342	  12.388300	 382.239100;
	2	 1500.0	 0.0	 3	   0.008342	  12.388300	 382.239100;
	2	 1500.0	 0.0	 3	   0.004895	  11.849500	 665.109400;
	2	 1500.0	 0.0	 3	   0.000000	 130.000000	 400.684900;
	2	 1500.0	 0.0	 3	   0.000000	 130.000000	 400.684900;
	2	 1500.0	 0.0	 3	   0.014142	  16.081100	 212.307600;
	2	 1500.0	 0.0	 3	   0.014142	  16.081100	 212.307600;
	2	 1500.0	 0.0	 3	   0.000000	 130.000000	 400.684900;
	2	 1500.0	 0.0	 3	   0.000000	 130.000000	 400.684900;
	2	 1500.0	 0.0	 3	   0.014142	  16.081100	 212.307600;
	2	 1500.0	 0.0	 3	   0.014142	  16.081100	 212.307600;
	2	 1500.0	 0.0	 3	   0.052672	  43.661500	 781.521000;
	2	 1500.0	 0.0	 3	   0.052672	  43.661500	 781.521000;
	2	 1500.0	 0.0	 3	   0.052672	  43.661500	 781.521000;
	2	 1500.0	 0.0	 3	   0.007170	  48.580400	 832.757500;
	2	 1500.0	 0.0	 3	   0.007170	  48.580400	 832.757500;
	2	 1500.0	 0.0	 3	   0.007170	  48.580400	 832.757500;
	2	 1500.0	 0.0	 3	   0.000000	   0.000000	   0.000000;
	2	 1500.0	 0.0	 3	   0.328412	  56.564000	  86.385200;
	2	 1500.0	 0.0	 3	   0.328412	  56.564000	  86.385200;
	2	 1500.0	 0.0	 3	   0.328412	  56.564000	  86.385200;
	2	 1500.0	 0.0	 3	   0.328412	  56.564000	  86.385200;
	2	 1500.0	 0.0	 3	   0.328412	  56.564000	  86.385200;
	2	 1500.0	 0.0	 3	   0.008342	  12.388300	 382.239100;
	2	 1500.0	 0.0	 3	   0.008342	  12.388300	 382.239100;
	2	 1500.0	 0.0	 3	   0.000213	   4.423100	 395.374900;
	2	 1500.0	 0.0	 3	   0.000213	   4.423100	 395.374900;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.008342	  12.388300	 382.239100;
	2	 1500.0	 0.0	 3	   0.008342	  12.388300	 382.239100;
	2	 1500.0	 0.0	 3	   0.004895	  11.849500	 665.109400;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	101	 102	 0.003	 0.014	 0.461	 175.0	 193.0	 200.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	101	 103	 0.055	 0.211	 0.057	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	101	 105	 0.022	 0.085	 0.023	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	102	 104	 0.033	 0.127	 0.034	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	102	 106	 0.05	 0.192	 0.052	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	103	 109	 0.031	 0.119	 0.032	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	103	 124	 0.002	 0.084	 0.0	 400.0	 510.0	 600.0	 1.015	 0.0	 1	 -7.598157	 7.598157;
	104	 109	 0.027	 0.104	 0.028	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	105	 110	 0.023	 0.088	 0.024	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	106	 110	 0.014	 0.061	 2.459	 175.0	 193.0	 200.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	107	 108	 0.016	 0.061	 0.017	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	107	 203	 0.042	 0.161	 0.044	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	108	 109	 0.043	 0.165	 0.045	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	108	 110	 0.043	 0.165	 0.045	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	109	 111	 0.002	 0.084	 0.0	 400.0	 510.0	 600.0	 1.03	 0.0	 1	 -7.598157	 7.598157;
	109	 112	 0.002	 0.084	 0.0	 400.0	 510.0	 600.0	 1.03	 0.0	 1	 -7.598157	 7.598157;
	110	 111	 0.002	 0.084	 0.0	 400.0	 510.0	 600.0	 1.015	 0.0	 1	 -7.598157	 7.598157;
	110	 112	 0.002	 0.084	 0.0	 400.0	 510.0	 600.0	 1.015	 0.0	 1	 -7.598157	 7.598157;
	111	 113	 0.006	 0.048	 0.1	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	111	 114	 0.005	 0.042	 0.088	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	112	 113	 0.006	 0.048	 0.1	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	112	 123	 0.012	 0.097	 0.203	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	113	 123	 0.011	 0.087	 0.182	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	113	 215	 0.01	 0.075	 0.158	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	114	 116	 0.005	 0.059	 0.082	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	115	 116	 0.002	 0.017	 0.036	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	115	 121	 0.006	 0.049	 0.103	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	115	 121	 0.006	 0.049	 0.103	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	115	 124	 0.007	 0.052	 0.109	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	116	 117	 0.003	 0.026	 0.055	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	116	 119	 0.003	 0.023	 0.049	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	117	 118	 0.002	 0.014	 0.03	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	117	 122	 0.014	 0.105	 0.221	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	118	 121	 0.003	 0.026	 0.055	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	118	 121	 0.003	 0.026	 0.055	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	119	 120	 0.005	 0.04	 0.083	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	119	 120	 0.005	 0.04	 0.083	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	120	 123	 0.003	 0.022	 0.046	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	120	 123	 0.003	 0.022	 0.046	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	121	 122	 0.009	 0.068	 0.142	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	123	 217	 0.01	 0.074	 0.155	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	201	 202	 0.003	 0.014	 0.461	 175.0	 193.0	 200.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	201	 203	 0.055	 0.211	 0.057	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	201	 205	 0.022	 0.085	 0.023	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	202	 204	 0.033	 0.127	 0.034	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	202	 206	 0.05	 0.192	 0.052	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	203	 209	 0.031	 0.119	 0.032	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	203	 224	 0.002	 0.084	 0.0	 400.0	 510.0	 600.0	 1.015	 0.0	 1	 -7.598157	 7.598157;
	204	 209	 0.027	 0.104	 0.028	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	205	 210	 0.023	 0.088	 0.024	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	206	 210	 0.014	 0.061	 2.459	 175.0	 193.0	 200.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	207	 208	 0.016	 0.061	 0.017	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	208	 209	 0.043	 0.165	 0.045	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	208	 210	 0.043	 0.165	 0.045	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	209	 211	 0.002	 0.084	 0.0	 400.0	 510.0	 600.0	 1.03	 0.0	 1	 -7.598157	 7.598157;
	209	 212	 0.002	 0.084	 0.0	 400.0	 510.0	 600.0	 1.03	 0.0	 1	 -7.598157	 7.598157;
	210	 211	 0.002	 0.084	 0.0	 400.0	 510.0	 600.0	 1.015	 0.0	 1	 -7.598157	 7.598157;
	210	 212	 0.002	 0.084	 0.0	 400.0	 510.0	 600.0	 1.015	 0.0	 1	 -7.598157	 7.598157;
	211	 213	 0.006	 0.048	 0.1	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	211	 214	 0.005	 0.042	 0.088	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	212	 213	 0.006	 0.048	 0.1	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	212	 223	 0.012	 0.097	 0.203	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	213	 223	 0.011	 0.087	 0.182	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	214	 216	 0.005	 0.059	 0.082	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	215	 216	 0.002	 0.017	 0.036	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	215	 221	 0.006	 0.049	 0.103	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	215	 221	 0.006	 0.049	 0.103	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	215	 224	 0.007	 0.052	 0.109	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	216	 217	 0.003	 0.026	 0.055	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	216	 219	 0.003	 0.023	 0.049	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	217	 218	 0.002	 0.014	 0.03	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	217	 222	 0.014	 0.105	 0.221	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	218	 221	 0.003	 0.026	 0.055	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	218	 221	 0.003	 0.026	 0.055	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	219	 220	 0.005	 0.04	 0.083	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	219	 220	 0.005	 0.04	 0.083	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	220	 223	 0.003	 0.022	 0.046	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	220	 223	 0.003	 0.022	 0.046	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	221	 222	 0.009	 0.068	 0.142	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	301	 302	 0.003	 0.014	 0.461	 175.0	 193.0	 200.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	301	 303	 0.055	 0.211	 0.057	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	301	 305	 0.022	 0.085	 0.023	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	302	 304	 0.033	 0.127	 0.034	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	302	 306	 0.05	 0.192	 0.052	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	303	 309	 0.031	 0.119	 0.032	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	303	 324	 0.002	 0.084	 0.0	 400.0	 510.0	 600.0	 1.015	 0.0	 1	 -7.598157	 7.598157;
	304	 309	 0.027	 0.104	 0.028	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	305	 310	 0.023	 0.088	 0.024	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	306	 310	 0.014	 0.061	 2.459	 175.0	 193.0	 200.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	307	 308	 0.016	 0.061	 0.017	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	308	 309	 0.043	 0.165	 0.045	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	308	 310	 0.043	 0.165	 0.045	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	309	 311	 0.002	 0.084	 0.0	 400.0	 510.0	 600.0	 1.03	 0.0	 1	 -7.598157	 7.598157;
	309	 312	 0.002	 0.084	 0.0	 400.0	 510.0	 600.0	 1.03	 0.0	 1	 -7.598157	 7.598157;
	310	 311	 0.002	 0.084	 0.0	 400.0	 510.0	 600.0	 1.015	 0.0	 1	 -7.598157	 7.598157;
	310	 312	 0.002	 0.084	 0.0	 400.0	 510.0	 600.0	 1.015	 0.0	 1	 -7.598157	 7.598157;
	311	 313	 0.006	 0.048	 0.1	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	311	 314	 0.005	 0.042	 0.088	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	312	 313	 0.006	 0.048	 0.1	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	312	 323	 0.012	 0.097	 0.203	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	313	 323	 0.011	 0.087	 0.182	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	314	 316	 0.005	 0.059	 0.082	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	315	 316	 0.002	 0.017	 0.036	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	315	 321	 0.006	 0.049	 0.103	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	315	 321	 0.006	 0.049	 0.103	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	315	 324	 0.007	 0.052	 0.109	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	316	 317	 0.003	 0.026	 0.055	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	316	 319	 0.003	 0.023	 0.049	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	317	 318	 0.002	 0.014	 0.03	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	317	 322	 0.014	 0.105	 0.221	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	318	 321	 0.003	 0.026	 0.055	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	318	 321	 0.003	 0.026	 0.055	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	319	 320	 0.005	 0.04	 0.083	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	319	 320	 0.005	 0.04	 0.083	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	320	 323	 0.003	 0.022	 0.046	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	320	 323	 0.003	 0.022	 0.046	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	321	 322	 0.009	 0.068	 0.142	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	325	 121	 0.012	 0.097	 0.203	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	318	 223	 0.013	 0.104	 0.218	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
	323	 325	 0.0	 0.009	 0.0	 722.0	 893.0	 893.0	 0.0	 0.0	 1	 -7.598157	 7.598157;
];

% INFO    : === Translation Options ===
% INFO    : Phase Angle Bound:           7.598157 (deg.)
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
