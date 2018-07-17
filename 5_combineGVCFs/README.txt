This folder contains scripts for combining all of the samples for
each contig into one gVCF file, so that you can run genotypeGVCFs
on them more efficiently.

Usage:

1) Make list files containing paths to each of the individual 
samples' gVCF files. I did this separately for:
* chr19, which I had already done
* chrY, where HaplotypeCaller failed due to not enough RAM
* chr8 and chr9 where one sample in each case also failed
  due to a lack of RAM

./make_gVCF_paths_lists.sh

2) Make the commands file to feed to GNU parallel

./make_commands_file.sh

3) submit each line in commands.txt using GNU parallel, using
submit_combineGVCFs.sh, which calls run_combineGVCFs.sh once
for each contig

nohup ./submit_combineGVCFs.sh &


