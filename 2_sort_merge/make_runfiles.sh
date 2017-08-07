# make a unique runfile for each rat sample because the number
# of input BAM files to pass to picardtools differs between samples

# get the samples:
grep 'norvegicus' /localdisk/home/bjackso4/rattus_norvegicus_FASTQ/sample_file_table.txt |\
  cut -f2 | sort | uniq | {
	while read SAMPLE
		do
			# start writing the command file: 
			# make a temporary directory
			echo -e "mkdir /localdisk/home/bjackso4/tmp/${SAMPLE}"  > run_${SAMPLE}.sh

			echo -e "java -Xmx12G -Djava.io.tmpdir=/localdisk/home/bjackso4/tmp/${SAMPLE} -jar /localdisk/home/bjackso4/programs/picard-2.8.3/picard.jar MergeSamFiles \\" >> run_${SAMPLE}.sh
			
			# grep the sample name and then cut out column 3, which is the run accession,
			# which also corresponds to the output bam file name from the mapping
			RUN=`grep ${SAMPLE} /localdisk/home/bjackso4/rattus_norvegicus_FASTQ/sample_file_table.txt | cut -f3`
			for ERR in $RUN
				do
					echo -e "INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/${ERR}.bam \\" >> run_${SAMPLE}.sh
				done
			echo -e "OUTPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/2_sort_merge_out/${SAMPLE}.merged.sorted.bam \\" >> run_${SAMPLE}.sh
			echo -e "SORT_ORDER=coordinate \\" >> run_${SAMPLE}.sh
			echo -e "USE_THREADING=true \\" >> run_${SAMPLE}.sh
			echo -e "2>/localdisk/home/bjackso4/rattus_norvegicus_GATK/2_sort_merge_out/${SAMPLE}.merged.sorted.bam.err" >> run_${SAMPLE}.sh
			echo -e "rm -rf /localdisk/home/bjackso4/tmp/${SAMPLE}" >> run_${SAMPLE}.sh
		done
}
