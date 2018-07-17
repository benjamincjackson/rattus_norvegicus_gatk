


for CONTIG in chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chr20 chrX chrY
do
  for FILE in /localdisk/home/bjackso4/rattus_norvegicus_GATK/3_mark_duplicates_out/*bam
  do
    TEMP=${FILE##*/}
    SAMPLE=${TEMP%%.*}
    DP=`samtools depth -r ${CONTIG} ${FILE} | awk '{ total += $3 } END { print total/NR }'`
    echo -e "${CONTIG}\t${DP}" >> ${SAMPLE}.dp.table
  done
done
