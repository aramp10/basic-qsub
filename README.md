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
   qsub -N testjob job.qsub
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

echo "Running job on host: $(hostname)"
echo "Current working directory: $(pwd)"
echo "Starting at: $(date)" 
```

## Useful Links

* [Submitting your Batch Job](https://www.bu.edu/tech/support/research/system-usage/running-jobs/submitting-jobs/)
   * Refer to the "General Directives" table to see the most commonly used directives

## Key Details
* Ticket: [INC20691453](https://bu.service-now.com/now/nav/ui/classic/params/target/incident.do%3Fsysparm_tiny%3Dde7c4f378745ed10a38aedfc0ebb3506%26sys_id%3Dd7b9959247d7e6103a9164c4f16d430d%26sysparm_record_row%3D1)
* Satsuma2: [GitHub](https://github.com/bioinfologics/satsuma2?tab=readme-ov-file)