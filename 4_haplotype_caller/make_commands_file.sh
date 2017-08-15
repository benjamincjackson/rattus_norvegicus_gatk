grep "norvegicus\|rattus" /localdisk/home/bjackso4/rattus_norvegicus_FASTQ/sample_file_table.txt | cut -f2 | sort | uniq | {
while read SAMPLE
do
	while read CONTIG
	do
		echo "nice -n 19 ./run_haplotype_caller.sh	/localdisk/home/bjackso4/rattus_norvegicus_GATK/3_mark_duplicates_out/${SAMPLE}.merged.sorted.dedupped.bam	${SAMPLE}	${CONTIG}" >> commands.txt
	done</localdisk/home/bjackso4/rattus_norvegicus_reference/contigs_main.txt

done
}
