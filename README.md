# random-rlooper

Snakemake workflow for generating and running rlooper on lots of
random sequences of various lengths. 

To run the workflow follow the instructions for [installing snakemake](https://snakemake.readthedocs.io/en/stable/getting_started/installation.html) if you have not already.

Once snakemake is installed the most basic way to run the workflow is
with the command `snakemake -j [n]` where n is the number of process you will allow snakemake to run at once. 

For more control modify the `run.sh` (script that executes snakemake command) and `cluster.yml` (configuration file for executing in SLURM
HPC setting) for what makes sense with your environment.

