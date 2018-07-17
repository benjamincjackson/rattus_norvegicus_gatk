# run haplotype caller on a chromosome for an individual,
# and output all sites with the BP_RESOLUTION argument

# USAGE:
# ./run_haplotype_caller.sh SAMPLEPATH(path) SAMPLE REGION

SAMPLEPATH=$1
SAMPLE=$2
REGION=$3

java -Xmx12g -jar /localdisk/home/bjackso4/programs/GenomeAnalysisTK.jar \
	-T HaplotypeCaller \
	-nct 4 \
	-R /localdisk/home/bjackso4/rattus_norvegicus_reference/rn6.fa \
	-I $SAMPLEPATH \
	-L $REGION \
	--emitRefConfidence BP_RESOLUTION \
	--max_alternate_alleles 2 \
	-o test.${SAMPLE}.${REGION}.g.vcf.gz \
	2> test.${SAMPLE}.${REGION}.err
