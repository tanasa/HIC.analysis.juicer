#!/bin/bash

############################################
FILE=$1
# script_part10_RAW_runHiC_with_HOMER_part2.sh
############################################

module load homer/4.9
module load bowtie2/2.3.4.3
module load juicer/1.5.4

HG38_INDEX="./bowtie2_genomes/hg38/hg38_genome.bowtie2"

# homerTools trim -3 GATC -mis 0 -matchStart 20 -min 20 $FILE
# bowtie2 -p 20 -x $HG38_INDEX -U $FILE > "${FILE}.hg38.sam"

# makeTagDirectory "${NAME}.HiC.TagDir"/ $FILE1,$FILE2 -tbp 1
# makeTagDirectory  "${NAME}.HiC.TagDir"  $FILE1,$FILE2 -tbp 1 -genome hg38 -checkGC -restrictionSite GATC

# tagDir2hicFile.pl "${NAME}.HiC.TagDir" -juicer auto -genome hg38 -p 10

# analyzeHiC $FILE -res 1000000 -raw -cpu 12 -o "${FILE}.output.1mil.RAW.Resolution.txt"

# analyzeHiC $FILE -res 500000 -raw -cpu 12 -o "${FILE}.output.0.5mil.RAW.Resolution.txt"

# analyzeHiC $FILE -res 200000 -raw -cpu 12 -o "${FILE}.output.0.2mil.RAW.Resolution.txt"

# analyzeHiC $FILE -res 100000 -raw -cpu 12 -o "${FILE}.output.0.1mil.RAW.Resolution.txt"

# analyzeHiC $FILE -res 50000 -raw -cpu 12 -o "${FILE}.output.0.05mil.RAW.Resolution.txt"

analyzeHiC $FILE -res 2000000 -raw -cpu 12 -o "${FILE}.output.2mil.RAW.Resolution.txt"

analyzeHiC $FILE -res 10000000 -raw -cpu 12 -o "${FILE}.output.10mil.RAW.Resolution.txt"

analyzeHiC $FILE -res 5000000 -raw -cpu 12 -o "${FILE}.output.5mil.RAW.Resolution.txt"



