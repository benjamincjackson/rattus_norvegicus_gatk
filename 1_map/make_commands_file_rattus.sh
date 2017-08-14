# make the commands file for the mapping program

REFERENCE='/localdisk/home/bjackso4/rattus_norvegicus_reference/rn6.fa'

grep 'rattus' /localdisk/home/bjackso4/rattus_norvegicus_FASTQ/sample_file_table.txt |\
  cut -f5 | cut -d';' -f1 | rev | cut -d'/' -f1 | rev | cut -d'_' -f1 | sort | uniq | {
    while read ERR
    do
      INFILE_1=${ERR}_1.stripped.fastq.gz
      INFILE_2=${ERR}_2.stripped.fastq.gz
      ID=${ERR}
      LB=`grep ${ERR} /localdisk/home/bjackso4/rattus_norvegicus_FASTQ/sample_file_table.txt | cut -f4`
      SM=`grep ${ERR} /localdisk/home/bjackso4/rattus_norvegicus_FASTQ/sample_file_table.txt | cut -f2`
      OUTFILE=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/${ERR}.bam

      echo "nice -n 19 ./run_mapping.sh ${REFERENCE} /localdisk/home/bjackso4/rattus_norvegicus_FASTQ_stripped/${INFILE_1} /localdisk/home/bjackso4/rattus_norvegicus_FASTQ_stripped/${INFILE_2} ${ID} ${LB} ${SM} ${OUTFILE}" >> commands_rattus.txt

    done
  }
