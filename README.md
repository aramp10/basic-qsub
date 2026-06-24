# Basic qsub Template Scripts

## Description

This repository contains a basic template for submitting jobs to a cluster using `qsub`. 

## Usage

1. **Edit the script**  
   Modify the `qsub` directives and commands in the script (`job.qsub`) to suit your job requirements.

2. **Make the script executable**  
   Run the following command to ensure the script is executable:
   ```bash
   chmod u+x job.qsub
   ```

3. **Submit the script**  
   Use the `qsub` command to submit the script to the job scheduler:
   ```bash
   qsub job.qsub
   ```

4. **Check output**  
   The output and logs will be saved in the working directory.

## Example Script

Below is an example of the job.qsub script:

```bash
#!/bin/bash -l
#$ -P ar-rcs
#$ -j y
#$ -l h_rt=12:00:00
#$ -pe omp 1
#$ -N testjob

echo "Running job on host: $(hostname)"
echo "Current working directory: $(pwd)"
echo "Starting at: $(date)" 
```

## R Markdown batch job (R_Markdown/job.qsub)

Renders an R Markdown file on the SCC via `qsub`.

**To render at the command line:**

```bash
module load R/4.5.2
module load pandoc/2.5
Rscript -e 'rmarkdown::render("test_batch.Rmd")'
```

**To submit as a batch job:**

```bash
qsub job.qsub
```

## Useful Links

* [Submitting your Batch Job](https://www.bu.edu/tech/support/research/system-usage/running-jobs/submitting-jobs/)
   * Refer to the "General Directives" table to see the most commonly used directives
