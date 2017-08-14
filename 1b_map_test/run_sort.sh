mkdir /localdisk/home/bjackso4/tmp/X
java -Xmx12G -Djava.io.tmpdir=/localdisk/home/bjackso4/tmp/X -jar /localdisk/home/bjackso4/programs/picard-2.8.3/picard.jar MergeSamFiles \
INPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1b_map_test/ERR316424.bam \
OUTPUT=/localdisk/home/bjackso4/rattus_norvegicus_GATK/1b_map_test/ERR316424.merged.sorted.bam \
SORT_ORDER=coordinate \
USE_THREADING=true \
CREATE_INDEX=true \
2>/localdisk/home/bjackso4/rattus_norvegicus_GATK/1b_map_test/ERR316424.merged.sorted.bam.err
rm -rf /localdisk/home/bjackso4/tmp/X
