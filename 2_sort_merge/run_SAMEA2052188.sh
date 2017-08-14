mkdir /localdisk/home/bjackso4/tmp/SAMEA2052188
java -Xmx12G -Djava.io.tmpdir=/localdisk/home/bjackso4/tmp/SAMEA2052188 -jar /localdisk/home/bjackso4/programs/picard-2.8.3/picard.jar MergeSamFiles \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316428.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316434.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316440.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316446.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316452.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316458.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316464.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316470.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316476.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316482.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316488.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316494.bam \
OUTPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/2_sort_merge_out/SAMEA2052188.merged.sorted.bam \
SORT_ORDER=coordinate \
USE_THREADING=true \
CREATE_INDEX=true \
2>/localdisk/home/bjackso4/rattus_norvegicus_GATK/2_sort_merge_out/SAMEA2052188.merged.sorted.bam.err
rm -rf /localdisk/home/bjackso4/tmp/SAMEA2052188
