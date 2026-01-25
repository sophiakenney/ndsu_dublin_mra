#!/bin/bash
# Convert PacBio BAM to FASTQ

# --- write job start time
echo "Job started at $(date)"

# --- activate conda env
source ~/.bashrc
eval "$(conda shell.bash hook)"
conda activate pbio

# --- set paths
IN=/your/path/here/0.0-pacbio/
OUT=/your/path/here/fastq

mkdir -p ${IN}
mkdir -p ${OUT}


# --- Run bam to fastq

cd ${IN}

for i in *.bam ; do

echo "Starting ${i}"

bam2fastq -c 5 -o ${OUT}/${i%.bam} ${i} ; done


# --- Write job start time
echo "Job ended at $(date)"