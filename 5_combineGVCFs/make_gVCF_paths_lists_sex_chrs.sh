# Make list files by chromosome by population in order to make final VCF
# files with separate populations in them.

for SAMPLE in SAMEA2051948 SAMEA2052187 SAMEA2052602 SAMEA2052605
do
	ls /localdisk/home/bjackso4/rattus_norvegicus_GATK/4_haplotype_caller_out/${SAMPLE}.chrY.g.vcf.gz >> gVCF_paths.Rn.chrY.list
done

while read SAMPLE
do
	ls /localdisk/home/bjackso4/rattus_norvegicus_GATK/4_haplotype_caller_out/${SAMPLE}.chrX.g.vcf.gz >> gVCF_paths.Rn.chrX.list
done <sample_names_Rn.txt

while read SAMPLE
do
	ls /localdisk/home/bjackso4/rattus_norvegicus_GATK/4_haplotype_caller_out/${SAMPLE}.chrX.g.vcf.gz >> gVCF_paths.Rr.chrX.list
done <sample_names_Rr.txt
