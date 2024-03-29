# Convert all FASTQ into FASTA files.
for FILE in *.fastq
do	
    awk 'NR%4' $FILE | awk 'NR%3' | sed 's/@/>/g' > $(basename $FILE .fastq).fasta
done
# Last line to eliminate .fastq in the file name
