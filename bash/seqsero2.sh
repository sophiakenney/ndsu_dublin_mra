#!/bin/bash
# Run SeqSero2

# --- write job start time
echo "Job started at $(date)"

# --- activate conda env
source ~/.bashrc
eval "$(conda shell.bash hook)"
conda activate seqsero

# --- set directory paths
ASSEMB=/your/path/here/3.0-unicycler_entero/assemblies
OUT=/your/path/here/3.2-sero/seqsero

# --- change to working directory
cd ${ASSEMB}

# -m "k" for raw reads and genome assembly k-mer
# -t "4" for genome assembly as input data type
# -i path to input file
# -d output directory

for f in *.fasta ;
do

  echo ${f%_assembly.fasta}