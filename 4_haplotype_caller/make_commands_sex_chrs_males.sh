for SAMPLE in SAMEA2051948 SAMEA2052187 SAMEA2052602 SAMEA2052605
do
	for CONTIG in chrX chrY
	do
		echo "nice -n 19 ./run_haplotype_caller_ploidy_1.sh	/localdisk/home/bjackso4/rattus_norvegicus_GATK/3_mark_duplicates_out/${SAMPLE}.merged.sorted.dedupped.bam	${SAMPLE}	${CONTIG}" >> commands_sex_chrs_males.txt
	done
done

