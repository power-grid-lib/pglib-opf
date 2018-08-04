%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%    IEEE PES Power Grid Library - Optimal Power Flow - v18.08     %%%%%
%%%%          (https://github.com/power-grid-lib/pglib-opf)           %%%%%
%%%%             Benchmark Group - Small Angle Difference             %%%%%
%%%%                         31 - July - 2018                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = pglib_opf_case24_ieee_rts__sad
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
	1	 2	 108.0	 22.0	 0.0	 0.0	 1	    1.00000	    0.00000	 138.0	 1	    1.05000	    0.95000;
	2	 2	 97.0	 20.0	 0.0	 0.0	 1	    1.00000	    0.00000	 138.0	 1	    1.05000	    0.95000;
	3	 1	 180.0	 37.0	 0.0	 0.0	 1	    1.00000	    0.00000	 138.0	 1	    1.05000	    0.95000;
	4	 1	 74.0	 15.0	 0.0	 0.0	 1	    1.00000	    0.00000	 138.0	 1	    1.05000	    0.95000;
	5	 1	 71.0	 14.0	 0.0	 0.0	 1	    1.00000	    0.00000	 138.0	 1	    1.05000	    0.95000;
	6	 1	 136.0	 28.0	 0.0	 -100.0	 2	    1.00000	    0.00000	 138.0	 1	    1.05000	    0.95000;
	7	 2	 125.0	 25.0	 0.0	 0.0	 2	    1.00000	    0.00000	 138.0	 1	    1.05000	    0.95000;
	8	 1	 171.0	 35.0	 0.0	 0.0	 2	    1.00000	    0.00000	 138.0	 1	    1.05000	    0.95000;
	9	 1	 175.0	 36.0	 0.0	 0.0	 1	    1.00000	    0.00000	 138.0	 1	    1.05000	    0.95000;
	10	 1	 195.0	 40.0	 0.0	 0.0	 2	    1.00000	    0.00000	 138.0	 1	    1.05000	    0.95000;
	11	 1	 0.0	 0.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	12	 1	 0.0	 0.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	13	 3	 265.0	 54.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	14	 2	 194.0	 39.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	15	 2	 317.0	 64.0	 0.0	 0.0	 4	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	16	 2	 100.0	 20.0	 0.0	 0.0	 4	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	17	 1	 0.0	 0.0	 0.0	 0.0	 4	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	18	 2	 333.0	 68.0	 0.0	 0.0	 4	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	19	 1	 181.0	 37.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	20	 1	 128.0	 26.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	21	 2	 0.0	 0.0	 0.0	 0.0	 4	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	22	 2	 0.0	 0.0	 0.0	 0.0	 4	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	23	 2	 0.0	 0.0	 0.0	 0.0	 3	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	24	 1	 0.0	 0.0	 0.0	 0.0	 4	    1.00000	    0.00000	 230.0	 1	    1.05000	    0.95000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	 18.0	 5.0	 10.0	 0.0	 1.035	 100.0	 1	 20.0	 16.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	1	 18.0	 5.0	 10.0	 0.0	 1.035	 100.0	 1	 20.0	 16.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	1	 45.6	 2.5	 30.0	 -25.0	 1.035	 100.0	 1	 76.0	 15.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	1	 45.6	 2.5	 30.0	 -25.0	 1.035	 100.0	 1	 76.0	 15.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	2	 18.0	 5.0	 10.0	 0.0	 1.035	 100.0	 1	 20.0	 16.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	2	 18.0	 5.0	 10.0	 0.0	 1.035	 100.0	 1	 20.0	 16.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	2	 45.6	 2.5	 30.0	 -25.0	 1.035	 100.0	 1	 76.0	 15.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	2	 45.6	 2.5	 30.0	 -25.0	 1.035	 100.0	 1	 76.0	 15.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	7	 62.5	 30.0	 60.0	 0.0	 1.025	 100.0	 1	 100.0	 25.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	7	 62.5	 30.0	 60.0	 0.0	 1.025	 100.0	 1	 100.0	 25.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	7	 62.5	 30.0	 60.0	 0.0	 1.025	 100.0	 1	 100.0	 25.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	13	 133.0	 40.0	 80.0	 0.0	 1.02	 100.0	 1	 197.0	 69.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	13	 133.0	 40.0	 80.0	 0.0	 1.02	 100.0	 1	 197.0	 69.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	13	 133.0	 40.0	 80.0	 0.0	 1.02	 100.0	 1	 197.0	 69.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	14	 0.0	 75.0	 200.0	 -50.0	 0.98	 100.0	 1	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	15	 7.2	 3.0	 6.0	 0.0	 1.014	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	15	 7.2	 3.0	 6.0	 0.0	 1.014	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	15	 7.2	 3.0	 6.0	 0.0	 1.014	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	15	 7.2	 3.0	 6.0	 0.0	 1.014	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	15	 7.2	 3.0	 6.0	 0.0	 1.014	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	15	 104.65	 15.0	 80.0	 -50.0	 1.014	 100.0	 1	 155.0	 54.3	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	16	 104.65	 15.0	 80.0	 -50.0	 1.017	 100.0	 1	 155.0	 54.3	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	18	 250.0	 75.0	 200.0	 -50.0	 1.05	 100.0	 1	 400.0	 100.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	21	 250.0	 75.0	 200.0	 -50.0	 1.05	 100.0	 1	 400.0	 100.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	22	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	22	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	22	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	22	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	22	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	22	 30.0	 3.0	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	23	 104.65	 15.0	 80.0	 -50.0	 1.05	 100.0	 1	 155.0	 54.3	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	23	 104.65	 15.0	 80.0	 -50.0	 1.05	 100.0	 1	 155.0	 54.3	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	23	 245.0	 62.5	 150.0	 -25.0	 1.05	 100.0	 1	 350.0	 140.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
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
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	 2	 0.0026	 0.0139	 0.4611	 175.0	 193.0	 200.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	1	 3	 0.0546	 0.2112	 0.0572	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	1	 5	 0.0218	 0.0845	 0.0229	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	2	 4	 0.0328	 0.1267	 0.0343	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	2	 6	 0.0497	 0.192	 0.052	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	3	 9	 0.0308	 0.119	 0.0322	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	3	 24	 0.0023	 0.0839	 0.0	 400.0	 510.0	 600.0	 1.03	 0.0	 1	 -7.382059	 7.382059;
	4	 9	 0.0268	 0.1037	 0.0281	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	5	 10	 0.0228	 0.0883	 0.0239	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	6	 10	 0.0139	 0.0605	 2.459	 175.0	 193.0	 200.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	7	 8	 0.0159	 0.0614	 0.0166	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	8	 9	 0.0427	 0.1651	 0.0447	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	8	 10	 0.0427	 0.1651	 0.0447	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	9	 11	 0.0023	 0.0839	 0.0	 400.0	 510.0	 600.0	 1.03	 0.0	 1	 -7.382059	 7.382059;
	9	 12	 0.0023	 0.0839	 0.0	 400.0	 510.0	 600.0	 1.03	 0.0	 1	 -7.382059	 7.382059;
	10	 11	 0.0023	 0.0839	 0.0	 400.0	 510.0	 600.0	 1.02	 0.0	 1	 -7.382059	 7.382059;
	10	 12	 0.0023	 0.0839	 0.0	 400.0	 510.0	 600.0	 1.02	 0.0	 1	 -7.382059	 7.382059;
	11	 13	 0.0061	 0.0476	 0.0999	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	11	 14	 0.0054	 0.0418	 0.0879	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	12	 13	 0.0061	 0.0476	 0.0999	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	12	 23	 0.0124	 0.0966	 0.203	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	13	 23	 0.0111	 0.0865	 0.1818	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	14	 16	 0.005	 0.0389	 0.0818	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	15	 16	 0.0022	 0.0173	 0.0364	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	15	 21	 0.0063	 0.049	 0.103	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	15	 21	 0.0063	 0.049	 0.103	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	15	 24	 0.0067	 0.0519	 0.1091	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	16	 17	 0.0033	 0.0259	 0.0545	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	16	 19	 0.003	 0.0231	 0.0485	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	17	 18	 0.0018	 0.0144	 0.0303	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	17	 22	 0.0135	 0.1053	 0.2212	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	18	 21	 0.0033	 0.0259	 0.0545	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	18	 21	 0.0033	 0.0259	 0.0545	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	19	 20	 0.0051	 0.0396	 0.0833	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	19	 20	 0.0051	 0.0396	 0.0833	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	20	 23	 0.0028	 0.0216	 0.0455	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	20	 23	 0.0028	 0.0216	 0.0455	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	21	 22	 0.0087	 0.0678	 0.1424	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
];

% INFO    : === Translation Options ===
% INFO    : Phase Angle Bound:           7.382059 (deg.)
% INFO    : 
% INFO    : === Base KV Replacement Notes ===
% INFO    : 
% INFO    : === Transformer Setting Replacement Notes ===
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
