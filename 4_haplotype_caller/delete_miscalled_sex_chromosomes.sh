# delete the haplotypecaller outputs I misspecified the ploidy
# of the sex chromosomes, or called sex chromosomes where they
# dont' exist (i.e. called the Y in females) 

# For males, delete everything and recall X and Y using ploidy=1
#for SAMPLE in SAMEA2051948 SAMEA2052187 SAMEA2052602 SAMEA2052605
#do
#	rm ../4_haplotype_caller_out/${SAMPLE}.chrX.g.vcf.gz* ../4_haplotype_caller_out/${SAMPLE}.chrY.g.vcf.gz*
#done

# For females, delete the Y and recall nothing
for SAMPLE in SAMEA2051945 SAMEA2051946 SAMEA2051947 SAMEA2051949 SAMEA2052188 SAMEA2052189 SAMEA2052190 SAMEA2052603 SAMEA2052604
do
#	rm ../4_haplotype_caller_out/${SAMPLE}.chrY.g.vcf.gz*
	rm ../4_haplotype_caller_out/${SAMPLE}.chrY.*err*
done

