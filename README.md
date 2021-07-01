# random-rlooper

Snakemake workflow for generating and running rlooper on lots of
random sequences of various lengths. 

To run the workflow follow the instructions for [installing snakemake](https://snakemake.readthedocs.io/en/stable/getting_started/installation.html) if you have not already.

Once snakemake is installed the most basic way to run the workflow is
with the command `snakemake -j [n] --use-conda` where n is the number of process you will allow snakemake to run at once. As long as you have conda installed and available this
will also download all required software. 

For more control modify the `run.sh` (script that executes snakemake command) and `cluster.yml` (configuration file for executing in SLURM
HPC setting) for what makes sense with your environment.

## Rlooper execution

All rlooper runs are executed with the command below where `{}` indicates a
value filled in by snakemake at runtime.

```
./rlooper {input_random_seq} {output_path} --N auto --sigma -0.07 --localaverageenergy --minlength 30
```