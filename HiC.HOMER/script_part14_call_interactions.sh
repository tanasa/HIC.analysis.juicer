#!/bin/bash

############################################
# script_part14_Call_INTERACTIONS_runHiC_with_HOMER.sh
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

analyzeHiC $FILE -res 100000 -interactions "${FILE}.interactions.resolution100kb.txt" -cpu 12

analyzeHiC $FILE -res 50000 -interactions "${FILE}.interactions.resolution50kb.txt" -cpu 12

analyzeHiC $FILE -res 20000 -interactions "${FILE}.interactions.resolution20kb.txt" -cpu 12

analyzeHiC $FILE -res 10000 -interactions "${FILE}.interactions.resolution10kb.txt" -cpu 12

### shall we add -nomatrix ?	

analyzeHiC $FILE -res 100000 -interactions "${FILE}.interactions.resolution100kb.nm.txt" -nomatrix -cpu 12

analyzeHiC $FILE -res 50000 -interactions "${FILE}.interactions.resolution50kb.nm.txt" -nomatrix -cpu 12

analyzeHiC $FILE -res 20000 -interactions "${FILE}.interactions.resolution20kb.nm.txt" -nomatrix -cpu 12

analyzeHiC $FILE -res 10000 -interactions "${FILE}.interactions.resolution10kb.nm.txt" -nomatrix -cpu 12
