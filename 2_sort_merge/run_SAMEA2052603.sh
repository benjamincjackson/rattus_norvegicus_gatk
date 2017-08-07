mkdir /localdisk/home/bjackso4/tmp/SAMEA2052603
java -Xmx12G -Djava.io.tmpdir=/localdisk/home/bjackso4/tmp/SAMEA2052603 -jar /localdisk/home/bjackso4/programs/picard-2.8.3/picard.jar MergeSamFiles \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316427.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316433.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316439.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316445.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316451.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316457.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316463.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316469.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316475.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316481.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316487.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316493.bam \
OUTPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/2_sort_merge_out/SAMEA2052603.merged.sorted.bam \
SORT_ORDER=coordinate \
USE_THREADING=true \
2>/localdisk/home/bjackso4/rattus_norvegicus_GATK/2_sort_merge_out/SAMEA2052603.merged.sorted.bam.err
rm -rf /localdisk/home/bjackso4/tmp/SAMEA2052603
