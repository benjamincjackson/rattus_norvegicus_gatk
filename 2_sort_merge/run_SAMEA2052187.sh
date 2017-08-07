mkdir /localdisk/home/bjackso4/tmp/SAMEA2052187
java -Xmx12G -Djava.io.tmpdir=/localdisk/home/bjackso4/tmp/SAMEA2052187 -jar /localdisk/home/bjackso4/programs/picard-2.8.3/picard.jar MergeSamFiles \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316425.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316431.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316437.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316443.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316449.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316455.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316461.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316467.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316473.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316479.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316485.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316491.bam \
OUTPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/2_sort_merge_out/SAMEA2052187.merged.sorted.bam \
SORT_ORDER=coordinate \
USE_THREADING=true \
2>/localdisk/home/bjackso4/rattus_norvegicus_GATK/2_sort_merge_out/SAMEA2052187.merged.sorted.bam.err
rm -rf /localdisk/home/bjackso4/tmp/SAMEA2052187
