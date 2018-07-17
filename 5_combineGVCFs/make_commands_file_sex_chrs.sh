for MYFILE in `ls *chrX.list`
do
	echo "nice -n 19 /localdisk/home/bjackso4/rattus_norvegicus_GATK/5_combineGVCFs/run_combineGVCFs.sh" $MYFILE >> commands_sex_chrs.txt
done

for MYFILE in `ls *chrY.list`
do
	echo "nice -n 19 /localdisk/home/bjackso4/rattus_norvegicus_GATK/5_combineGVCFs/run_combineGVCFs.sh" $MYFILE >> commands_sex_chrs.txt
done

