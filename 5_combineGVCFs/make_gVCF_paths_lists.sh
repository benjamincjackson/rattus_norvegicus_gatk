# Make list files by chromosome by population in order to make final VCF
# files with separate populations in them.

for CONTIG in chr20 chr19 chr18 chr17 chr16 chr15 chr14 chr13 chr12 chr11 chr10 chr9 chr8 chr7 chr6 chr5 chr4 chr3 chr2 chr1
do
	for POP in Rn Rr
	do
		while read SAMPLE
		do
			# make the .list file
			ls /localdisk/home/bjackso4/rattus_norvegicus_GATK/4_haplotype_caller_out/${SAMPLE}.${CONTIG}.g.vcf.gz >> gVCF_paths.${POP}.${CONTIG}.list
		done <sample_names_${POP}.txt
	done 
done


