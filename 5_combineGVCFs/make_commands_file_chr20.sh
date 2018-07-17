for MYFILE in `ls *chr20.list`
do
	echo "nice -n 19 /localdisk/home/bjackso4/rattus_norvegicus_GATK/5_combineGVCFs/run_combineGVCFs.sh" $MYFILE >> commands_chr20.txt
done

