#!/bin/bash

# a version of the script to get the input commands for HaplotypeCaller
# but just to get the sample names per subspecies/species

# R novegicus
grep norvegicus ~/rattus_norvegicus_FASTQ/sample_file_table.txt  | cut -f2 | sort | uniq > sample_names_Rn.txt

# R rattus
grep rattus ~/rattus_norvegicus_FASTQ/sample_file_table.txt  | cut -f2 | sort | uniq > sample_names_Rr.txt 





