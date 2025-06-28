#!/bin/bash

############################################
# script_part13_Norm_per_chr_runHiC_with_HOMER.sh
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

FILE=$1
CHR=$2

analyzeHiC $FILE -res 100000 -chr $CHR -norm -cpu 12 -o "${FILE}.norm.${CHR}.resolution.100kb.txt"

# analyzeHiC $FILE -res 50000 -chr $CHR -norm -cpu 12 -o "${FILE}.norm.${CHR}.resolution.50kb.txt"

# analyzeHiC $FILE -res 20000 -chr $CHR -norm -cpu 12 -o "${FILE}.norm.${CHR}.resolution.20kb.txt"

# analyzeHiC $FILE -res 10000 -chr $CHR -norm -cpu 12 -o "${FILE}.norm.${CHR}.resolution.10kb.txt"

