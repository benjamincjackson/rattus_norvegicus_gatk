for MYFILE in /localdisk/home/bjackso4/rattus_norvegicus_GATK/5_combineGVCFs_out/*combined*.gz
do
	echo "nice -n 19 /localdisk/home/bjackso4/rattus_norvegicus_GATK/6_genotypeGVCFs/run_genotypeGVCFs.sh" $MYFILE >> commands.txt
done

