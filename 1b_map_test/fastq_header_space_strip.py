
import gzip, argparse, sys, csv

parser = argparse.ArgumentParser(description="""remove space characters from fastq (header) lines
                                                because they stop bwa from parsing the header information
						correctly, which in turn prevents mark duplicates being
						able to account for optical duplicates because the tile
						coordinate information isn't available""")

parser.add_argument('input_fastq_file', help='a gzipped fastq file for Eva\'s rat data')
parser.add_argument('output_fastq_file', help='a gzipped fastq file for Eva\'s rat data with spaces in the headers removed')
args = parser.parse_args()

input_file_fastq = args.input_fastq_file
output_file_fastq = args.output_fastq_file

# This reads every line in a (Gzipped) fastq file, splits it on spaces,
# and then writes the concatentaed lines back to a gzipped file.
# Only the header line should contain spaces, so these are the only lines
# that are changed. 


output = gzip.open(output_file_fastq, 'wb')

with gzip.open(input_file_fastq, 'rt') as f:
    textreader = csv.reader(f, delimiter=' ', quoting=csv.QUOTE_NONE)
    for line in textreader:
        newline = ''.join(line)
        output.write(bytes(newline + '\n', 'UTF-8'))

output.close()
