for FILE in /localdisk/home/bjackso4/rattus_norvegicus_GATK/2_sort_merge_out/*.bam
do
	echo "nice -n 19 ./run_mark_duplicates.sh ${FILE}" >> commands.txt
done
