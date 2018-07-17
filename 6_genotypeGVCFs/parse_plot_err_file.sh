# parse the stderr output produced by genotypeGCVFs (that I have
# saved as .err files) in order just to get the table of times
# and positions.

# Usage: parse_plot_err_file.sh {contig.err}

MYFILE=$1

# this is a bit of hack - the argument given to tail will
# vary with the number of lines of header information printed
# before the GATK walker gets going. Grepping out the lines 
# start with WARN gets rid of some undesirable stuff.
head -n -4 $MYFILE | tail -n +24 | grep -v "^WARN" > $MYFILE.table

# Run an R script that plots runtime against position on the contig
Rscript plotTime.R $MYFILE.table

