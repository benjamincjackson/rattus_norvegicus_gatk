# use parallel to run GATK combineGVCFs for each contig

# e.g. run four instances of the script at any given time using -j4
parallel -j2 :::: commands_chr20.txt
