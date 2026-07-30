# Borophene-Shear-MD

**Overview**

This repository contains the input files, processed datasets, plotting scripts, analysis workflow, and representative output files associated with the manuscript:

"Atomistic investigation of the shear deformation of borophene: Role of temperature, strain rate, and loading direction"

submitted to Computational Materials Science.

The repository has been organized to facilitate reproducibility of the molecular dynamics simulations and the figures presented in the manuscript.

**Repository Structure**

Borophene-Shear-MD/
│
├── Gnuplot/
├── Input/
├── OVITO/
├── Processed_Data/
└── Representative_Output/

A brief description of each folder is provided below. More detailed information is available in the corresponding README.md file within each folder.

Gnuplot:	Gnuplot scripts used for plotting the processed datasets.
Input:	LAMMPS input files, initial borophene structure, and interatomic potential files.
OVITO:	Settings for RDF calculations.
Processed_Data:	Processed numerical datasets used to generate the figures in the manuscript.
Representative_Output:	Representative LAMMPS output files for verification and reference.

**Simulation Workflow**

1. Equilibrate the initial borophene structure at the required temperature and pressure using Input/in.equilibrate.
2. Perform shear deformation using Input/in.shear by specifying the desired strain rate and temperature.
3. Visualize the atomic trajectories and calculate the radial distribution function (RDF) using OVITO.
4. Generate the figures using the processed datasets and the corresponding Gnuplot scripts.

**Software**

The simulations, post-processing and plotting were performed using:

LAMMPS (version: lammps-29Aug2024)

OVITO (version: 2.9.0)

Gnuplot (version: 6.0)

**Reproducing the Results**

The processed datasets included in this repository were used to generate the figures presented in the manuscript. The corresponding Gnuplot scripts are provided to reproduce the published plots. Detailed instructions are available in the README.md files within the respective folders.


**Citation**

If you use the data or scripts provided in this repository, please cite the associated journal article after publication.

**Contact**

Dr. Sunil Rawat

Department of Physics

Chandigarh University Uttar Pradesh

Email: sunil.l100104@culko.in
