mkdir /localdisk/home/bjackso4/tmp/SAMEA2051947
java -Xmx12G -Djava.io.tmpdir=/localdisk/home/bjackso4/tmp/SAMEA2051947 -jar /localdisk/home/bjackso4/programs/picard-2.8.3/picard.jar MergeSamFiles \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316495.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316502.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316509.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316516.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316523.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316530.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316537.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316544.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316551.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316558.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR316565.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR319163.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR319170.bam \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1_map_out/ERR319177.bam \
OUTPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/2_sort_merge_out/SAMEA2051947.merged.sorted.bam \
SORT_ORDER=coordinate \
USE_THREADING=true \
CREATE_INDEX=true \
2>/localdisk/home/bjackso4/rattus_norvegicus_GATK/2_sort_merge_out/SAMEA2051947.merged.sorted.bam.err
rm -rf /localdisk/home/bjackso4/tmp/SAMEA2051947
