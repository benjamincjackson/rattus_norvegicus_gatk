# use parallel to run GATK genotypeGVCFs for each contig

# e.g. run four instances of the script at any given time using -j4
parallel -j3 :::: commands_sex_chrs.txt
