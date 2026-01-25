# Draft genomes of Salmonella Dublin from North Dakota State University Veterinary Diagnostic Laboratory

## Publication 

DOI: *To be updated upon publication release*

## Repository Structure and Analysis Pipeline 

### Directory contents

*   `bash` contains all code used to perform the analysis and generate output tables used in RStudio
  
      * subdir `condaenv_yaml` contains yaml files for all conda environments needed for the analysis

*    `R` contains all code used to aggregate sequence statistics

      * `script` : all R scripts

### Analysis Pipeline 

#### **HPC Component**

Bash scripts should be run in this order: 

1. pbtofq.sh - convert pacbio bam files to fastq
2. accessionqc.sh - access and qc raw reads from sra
3. trimqc.sh - qc reads and generate qc reports
4. classifyreads.sh - taxonomic classification to check for contamination
5. filterreads.sh - filter for *Enterobacteriaceae* reads
6. assembly.sh - genome assembly
7. assembqc.sh - assembly qc
8. seqsero2.sh - in silico serotype confirmation
9. sistr.sh - in silico serotype confirmation

#### **RStudio Component**

Recommended order:

1. readqc.R - aggregate read qc details in Table 1
2. assembqc.R - aggregate assembly qc details in Table 1
   
