# Draft genomes of Salmonella Dublin from North Dakota State University Veterinary Diagnostic Laboratory

## Publication 

DOI: *To be updated upon publication release*

## Repository Structure and Analysis Pipeline 

### Directory contents

*   `bash` contains all code used to perform the analysis and generate output tables used in RStudio
  
      * subdir `condaenv_yaml` contains yaml files for all conda environments needed for the analysis

*    `R` contains all code used to perform downstream analysis and data visualizations used in the manuscript

      * `assembqc` : assembly qc tables 
      * `meta` : metadata for final dataset
      * `readqc` : read qc tables
      * `script` : all R scripts

### Analysis Pipeline 

#### **HPC Component**

Bash scripts should be run in this order: 

1. pbtofq.sh - convert pacbio bam files to fastq
2. trimqc.sh - qc reads and generate qc reports
3. classifyreads.sh - taxonomic classification to check for contamination
4. filterreads.sh - filter for *Enterobacteriaceae* reads
5. assembly.sh - genome assembly
6. assembqc.sh - assembly qc

#### **RStudio Component**

Recommended order:

1. readqc.R - aggregate read qc details in Table 1
2. assembqc.R - aggregate assembly qc details in Table 1
   
