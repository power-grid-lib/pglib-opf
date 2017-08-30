# Power Grid Lib - Optimal Power Flow v17.08

This benchmark library is curated and maintained by the [IEEE PES Task Force on Benchmarks for Validation of Emerging Power System Algorithms](https://power-grid-lib.github.io/) and is designed to evaluate a well established version of the the AC Optimal Power Flow problem.  Specifically, these cases are designed for benchmarking algorithms that solve the following Non-Convex Nonlinear Program,

&nbsp;
![The Mathematical Model of the Optimal Power Flow Problem](MODEL.png?raw=true "Optional Title")
&nbsp;

A detailed description of this mathematical model is available [here](https://arxiv.org/abs/1502.07847).  All of the cases files are curated in the [Matpower](www.pserc.cornell.edu/matpower) data format and baseline results are available in [BASELINE.md](BASELINE.md).

## Case File Overview

A forthcoming technical report will detail the sources, motivations, and procedures for curating these case files.

In this repository the network data files are organized into the following three broad groups:

* /*.m - base case benchmarks as originally specified
* /api/*.m - heavily loaded test cases (i.e. binding thermal limit constraints)
* /sad/*.m - small phase angle difference cases (i.e. binding phase angle difference constraints)

## Contributions

Community-driven review and contributions are welcome and encouraged in all PGLib repositories. Please feel free to submit comments and questions in the [issue tracker](https://github.com/power-grid-lib/pglib-opf/issues).  Corrections and new network contributions are welcome via pull requests.  All contributions are subject to a quality assurance review by the repository curator(s).

## Citation Guidelines

This repository is not static.  Consequently, it is critically important to indicate the version number when referencing this repository in scholarly work.

Users of this these cases are encouraged to cite the original source documents that are indicated in the file headers.
