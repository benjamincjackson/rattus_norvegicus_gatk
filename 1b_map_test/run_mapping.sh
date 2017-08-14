# Map each rat fastq file to the rn6 reference sequence

# SM can come straight from 'sample_file_table.txt'
# LB can also come from 'sample_file_table.txt' if this information is correct
# PL is 'ILLUMINA'
# ID should be flowcellxlane information, which can be gotten from the fastq files

REFERENCE=$1
INFILE_1=$2
INFILE_2=$3
ID=$4
LB=$5
SM=$6
OUTFILE=$7

bwa mem -t8 -M $REFERENCE $INFILE_1 $INFILE_2 -R "@RG\tID:${ID}\tLB:${LB}\tPL:ILLUMINA\tSM:${SM}" 2> ${OUTFILE}.err |\
	samtools view -@8 -b > $OUTFILE


