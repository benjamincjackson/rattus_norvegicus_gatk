mkdir /localdisk/home/bjackso4/tmp/SAMEA2051945
java -Xmx12G -Djava.io.tmpdir=/localdisk/home/bjackso4/tmp/SAMEA2051945 -jar /localdisk/home/bjackso4/programs/picard-2.8.3/picard.jar MergeSamFiles \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316423.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316429.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316435.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316441.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316447.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316453.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316459.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316465.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316471.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316477.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316483.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316489.bam \
OUTPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/2_sort_merge_out/SAMEA2051945.merged.sorted.bam \
SORT_ORDER=coordinate \
USE_THREADING=true \
CREATE_INDEX=true \
2>/localdisk/home/bjackso4/rattus_norvegicus_GATK/2_sort_merge_out/SAMEA2051945.merged.sorted.bam.err
rm -rf /localdisk/home/bjackso4/tmp/SAMEA2051945
