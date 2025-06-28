#!/bin/bash

############################################
FILE=$1
############################################
# script_part12_simpleNorm_runHiC_with_HOMER.sh

module load homer/4.9
module load bowtie2/2.3.4.3
module load juicer/1.5.4

HG38_INDEX="./bowtie2_genomes/hg38/hg38_genome.bowtie2"

# homerTools trim -3 GATC -mis 0 -matchStart 20 -min 20 $FILE
# bowtie2 -p 20 -x $HG38_INDEX -U $FILE > "${FILE}.hg38.sam"

# makeTagDirectory "${NAME}.HiC.TagDir"/ $FILE1,$FILE2 -tbp 1
# makeTagDirectory  "${NAME}.HiC.TagDir"  $FILE1,$FILE2 -tbp 1 -genome hg38 -checkGC -restrictionSite GATC

# tagDir2hicFile.pl "${NAME}.HiC.TagDir" -juicer auto -genome hg38 -p 10

analyzeHiC $FILE -res 1000000 -simpleNorm -cpu 12 -o "${FILE}.output.1mil.simpleNorm.Resolution.txt"

analyzeHiC $FILE -res 500000 -simpleNorm -cpu 12 -o "${FILE}.output.0.5mil.simpleNorm.Resolution.txt"

analyzeHiC $FILE -res 200000 -simpleNorm -cpu 12 -o "${FILE}.output.0.2mil.simpleNorm.Resolution.txt"

analyzeHiC $FILE -res 100000 -simpleNorm -cpu 12 -o "${FILE}.output.0.1mil.simpleNorm.Resolution.txt"

analyzeHiC $FILE -res 50000 -simpleNorm -cpu 12 -o "${FILE}.output.0.05mil.simpleNorm.Resolution.txt"

